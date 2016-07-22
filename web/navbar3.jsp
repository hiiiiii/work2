<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<!DOCTYPE html>
<%
    String user = request.getParameter("username");
    //String rid = request.getParameter("rid");
    //String restraunts="select * from category where Rid="+rid+";";
    //ResultSet rs=DAOLayerDemo.selectData(restraunts);

    String rid="1";
    String restraunt1[] = {"DeliverIt Hub", "Lal Quila", "Mio Amore", "Wild Berry", "Biggies"};
    int i = 0;
    String restraunt2[] = {"Angan", "The Hub"};
    //while(rs.next()){
    //restraunt[i]=rs.getString(1);


%>
<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script>
            function w3_open() {
                document.getElementById("mySidenav").style.width = "20%";
                document.getElementById("mySidenav").style.display = "block";
            }
            function w3_close() {
                document.getElementById("mySidenav").style.display = "none";
            }
        </script>
        <style>
            body {
                position: relative; 
            }
            #section1 {padding-top:50px;height:500px;color: #fff; background-color: #1E88E5;}
            #section2 {padding-top:50px;height:500px;color: #fff; background-color: #673ab7;}
            #section3 {padding-top:50px;height:500px;color: #fff; background-color: #ff9800;}
            #section41 {padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}
            #section42 {padding-top:50px;height:500px;color: #fff; background-color: #009688;}
            .sidenav {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 0;
                left: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
            }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s
            }

            .sidenav a:hover, .offcanvas a:focus{
                color: #f1f1f1;
            }

            .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px !important;
                margin-left: 50px;
            }

            @media screen and (max-height: 450px) {
                .sidenav {padding-top: 15px;}
                .sidenav a {font-size: 18px;}
            }

            .button {
                display: inline-block;
                border-radius: 4px;
                background-color: #f4511e;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px;
                padding: 20px;
                width: 200px;
                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;
            }

            .button span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }

            .button span:after {
                content: '»';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }

            .button:hover span {
                padding-right: 25px;
            }

            .button:hover span:after {
                opacity:1;
                right: 0;
            }

        </style>

        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
            }
            function assign1(){
                document.getElementById("username").innerHTML=localStorage.getItem("username");
            }
        </script>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50" onload="assign1()">



        <nav class="navbar navbar-inverse navbar-fixed-top">


            <div class="container-fluid">


                <div class="navbar-header">
                    <table><tr>
                            <td style="margin:2%;padding: 2%"><span style="font-size:30px;cursor:pointer;float:left;padding: 2%;margin: 2%;color: #ffffff" onclick="openNav()"><img src="images/settings.png" width="35px" height="35px"></span></td>

                            <td style="margin-left:50%;padding-left:20%;color:#ffffff"><h2>DeliverIt</h2></td>
                            <td style="padding-left:200%;padding-top: 10%;">
                                <%@include file="searchBar.jsp" %>
                            </td>
                            <td style="padding-left:250%"> 
                                <img src="images/cart4.png" width="35px" height="35px">
                            </td>
                            <td style="padding-left:300%"> 
                                <img src="images/user.png" width="35px" height="35px">
                            </td>
                        </tr></table>

                    <!-- <div id="header">
                         <span style="font-size:30px;cursor:pointer;float:left;padding: 2%;margin: 2%;color: #ffffff" onclick="openNav()"><img src="images/settings.png" width="35px" height="35px"><h2>DeliverIt</h2>
                     </span>
                         
                         <span style="float:left">DeliverIt</span>
                         
                         
                     </div>-->


                    <!--  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    
                      
                      <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                    
                </button>-->
                    
                    <%
    
                    %>
<span id="username" style="float:left;color:#ffffff;font-size:180%;padding-left: 3%;font-family: veranda"></span>
                </div>


                            
                <div class="collapse navbar-collapse" id="myNavbar" style="padding-left:20%">
                    <br><br><br><br><br><br>
                    
                    <ul class="nav navbar-nav">
                        
                        <li><a href="#section1">Restraunts</a></li>
                        <li><a href="#section2">Evening Strolls</a></li>
                        <li><a href="#section3">Drinks & beverages</a></li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Section 4 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#section41">Fruits</a></li>
                                <li><a href="#section42">Grocery</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
                    <a href="#">About</a>
                    <a href="#">Services</a>
                    <a href="#">Clients</a>
                    <a href="#">Contact</a>
                </div>

            </div>

        </nav>
        <br>
       <div id="signupLoginSection" style=" float:right;margin-top: 8%;margin-bottom: 3%;margin-right: 3%;padding-bottom: 2%">
           <br><br>
           <form action="signupLogin.jsp">
                <input type="hidden" name="rid" value="<%=rid%>">
                       <input class="button" type="submit" name="submit" value="Login/Signup" >
            </form>
                </div>

        <div id="section1" class="container-fluid" style="padding-top:10%">
            <h1>Restraunts</h1>
            <!--<p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>-->
            <%

                if (rid.equals("1")) {

                    for (int j = 0; j < restraunt1.length; j++) {
            %>
            <div>
                <a href="<%=restraunt1[i]%>.jsp"><div style="float:left;padding:1%;margin: 1%;"><img src="images/deliverit.png"><br><br><span style="font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%"><%=restraunt1[i]%></span></div></a>

            </div>
            <%i++;
          }
      }%>
            <%
                if (rid.equals("2")) {
                    for (int k = 0; k < restraunt2.length; k++) {
            %>
            <div>
                <a href="#"><div style="float:left;padding:1%;margin: 1%;"><img src="images/deliverit.png"><br><br><span style="font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%"><%=restraunt2[i]%></span></div></a>

            </div>
            <%i++;
          }
      }%>

        </div> 
        <div id="section2" class="container-fluid">
            <h1>Evening Strolls</h1>
            <%
                String evening="select * from subcategory where Cid=6";
                ResultSet rs=DAOLayerDemo.selectData(evening);
                while(rs.next()){
            %>
            <a href="<%=rs.getString(3)%>.jsp"><div style="float:left;padding:1%;margin: 1%;"><img src="images/deliverit.png"><br><br><span style="font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%"><%=rs.getString(3)%></span></div></a>
       <%}%>
        </div>
        <div id="section3" class="container-fluid">
            <br><br>
            <h1>Drinks & Beverages </h1>
            <%
                String beverages="select * from subcategory where Cid=7";
                ResultSet ds=DAOLayerDemo.selectData(beverages);
                while(ds.next()){
            %>
            <a href="<%=ds.getString(3)%>.jsp"><div style="float:left;padding:1%;margin: 1%;"><img src="images/deliverit.png"><br><br><span style="font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%"><%=ds.getString(3)%></span></div></a>
       <%}%>
        </div>
        <div id="section41" class="container-fluid">
            <h1>Fruits</h1>
            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
        </div>
        <div id="section42" class="container-fluid">
            <h1>Grocery</h1>
            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>
        </div>

    </body>
</html>
