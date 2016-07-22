<head>
<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-pink.min.css">
    <script src="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<script>
    function assign(){
        var x=document.getElementsByClassName("user");
        var k;
        document.getElementById("name").value=localStorage.getItem("username");
        
        for(k=0;k<x.length;k++){
         x[k].value=localStorage.getItem("username");
    }
    }
</script>
<style>
    .aign{
        float:left;
        padding:2%;
        margin: 2%;
        font-family: verdana;
        
    }
    .button{
            border-radius: 8px;
            color:white;
            background-color:#808080;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .button:hover{
            background-color: white;
            color:black;
            border-radius: 8px;
        }
        p{
            color:grey;
        }
        .cart{
            border-radius: 4px;
            color:white;
            width:130%;

            background-color: gray;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .cart:hover{
            background-color: white;
            color:gray;
            border-radius: 4px;
        }
        .avail{
            background-color: green;
            color:white;
            padding:7%;
            font-family: veranda;
        }
</style>
</head>
    <%String user = request.getParameter("username");%>
<body onload="assign()"  style="background-color: #FFCC00 ">
     <div style="float:right;margin-right:7%;margin-top: 1%;font-family: verdana;">
    
        <form action="cart.jsp">
            <input type="hidden" id="name" name="user">
            <input class="cart"  type="submit" value="CART">
        </form>
    
     </div>

    <%String jsp="Veg";%>
<center><div style="font-family: verdana;">
        <h1><%=jsp%></h1><hr>
        <!--<div>Product</div><div>Price</div><div>Availability</div><br><br>-->
    </div></center>
    
<%
    
        String select = "select * from product where Cid=1 and Sid=12";
        String quantity[]=new String[100];
       
        ResultSet rs = DAOLayerDemo.selectData(select);
        String add = request.getParameter("add");
        
        String remove = request.getParameter("remove");
        if (add != "" && add != null) {
            
            String additem = "select * from weborder where item='" + add + "' and user='" + user + "'";
            ResultSet ps = DAOLayerDemo.selectData(additem);
            if (ps.next()) {
                String update = "update weborder set quantity=(quantity+1) where item='" + add + "' and user='" + user + "';";
                int a1 = DAOLayerDemo.updateData(update);
            } else {
                String update = "insert into weborder values('" + user + "','" + add + "',1,0)";
                int a1 = DAOLayerDemo.updateData(update);
            }
        } else if (remove != "" && remove != null) {
            
            String removeitem = "select * from weborder where item='" + remove + "' and user='" + user + "';";
            ResultSet ps = DAOLayerDemo.selectData(removeitem);
            if (ps.next()) {
                String update = "update weborder set quantity=(quantity-1) where item='" + remove + "' and user='" + user + "';";
                int a1 = DAOLayerDemo.updateData(update);
                String update1 = "update weborder set quantity=0 where quantity<0";
                int a2 = DAOLayerDemo.updateData(update1);

            }
        }
    
        int j=0;
    while(rs.next () 
        ){
    String name = rs.getString(4);
        String price = rs.getString(5);
        String avail = rs.getString(7);%>
<script>
    var c = 0;
    function add() {
        c++;
        document.getElementById("value1").innerHTML = c;
        document.getElementById("quan").value = c;
    }
    function subt() {
        c--;
        document.getElementById("value1").innerHTML = c;
        document.getElementById("quan1").value = c;
    }
    
</script>

 <%
        String quantity2="0";
        
        
        String selectQuan="select * from weborder where item='"+name+"' and user='"+user+"';";
        ResultSet ws=DAOLayerDemo.selectData(selectQuan);
        
        if(ws.next()){
             quantity2=ws.getString(3);
        }
        
        %>

        <%
        int amount=0;
        if(quantity2!=null && quantity2!=""){
             
            int p=Integer.parseInt(price);
            int q=Integer.parseInt(quantity2);
            amount=p*q;
        }
         String amount1="update weborder set amount="+amount+" where item='"+name+"' and user='"+user+"'";
         int a4=DAOLayerDemo.updateData(amount1);
        %>


<div class="mdl-card mdl-card--border mdl-shadow--2dp through mdl-shadow--16dp" style="width:96%;margin:2%;padding: 1%">



    <table><tr>
            <td><div style="padding: 2%;padding-left: 20%;float:left"><img src="images/deliverit.png" width="130" height="130"></div></td>     
            <td style="padding-left:2%;margin-left: 2%"><br><h3><%=name%></h3><br><p>Rs.<%=price%></p></td>
            <td><div style="float:left;padding-right:4%">
                    <form action="<%=jsp%>.jsp">
                        <input  type="hidden" name="add" value="<%=name%>">
                        <input class="user"  type="hidden" name="username" >
                        <input class="button" type="submit" onsubmit="assign()"  value="+">           
                    </form>   
                </div>
                <div style="float:left">
                    <form action="<%=jsp%>.jsp">
                        <input type="hidden" name="remove"  value="<%=name%>">
                        <input class="user" type="hidden" name="username"  >
                        <input class="button" onsubmit="assign()" type="submit"  value="-">           
                    </form> 
                </div></td>
            <td><p>Quantity:<%=quantity2%></p></td>
        </tr> 
        <hr>
        <tr>
            <td> <p id="value1"></p></td>

            <td><div style="float:left"></div><br></td>
            <%
            String available="";
            if(avail.equals("1")){
                available="available";
            }
            else{
                available="Not available";
            }
                
            
            %>
            <td><br><div style="float:left;"><p class="avail" ><%=available%></p></div><br></td>

            <td><br><div style="float:left"><p>Amount: Rs.<%=amount%></p></div></td>
        </tr></table>
</div>


<!---<div>
<div><%//=name%></div><div><%//=price%></div><div><%//=avail%></div>
    <p id="value1"></p>
    <div>
    <form action="Chicken Kadhai Items.jsp">
        <input  type="hidden" name="add" value="<%//=name%>">
        <input class="user"  type="hidden" name="username" >
        <input  type="submit" onsubmit="assign()"  value="+">           
    </form>   
    </div>
        <div>
    <form action="Chicken Kadhai Items.jsp">
        <input type="hidden" name="remove"  value="<%//=name%>">
        <input class="user" type="hidden" name="username"  >
        <input  onsubmit="assign()" type="submit"  value="-">           
    </form> 
        </div>
       
        
        <div > <%//=quantity2 %></div><br>
                <div >Amount: <%//= amount %></div>
        <br><hr>
</div>--->

<%
     }
%>
  </body>




