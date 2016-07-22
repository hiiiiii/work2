<%@page import="jdbc.DAOLayerDemo"%>
<%
String user=request.getParameter("user");
String items=request.getParameter("items");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String total1=request.getParameter("total1");
out.print(user+items+phone+address+total1);
String insert="insert into `order` (delivery,address,name,items,phone,total,username) values('0','"+address+"','"+user+"','"+items+"','"+phone+"','"+total1+"',"+user+"')";
int a5=DAOLayerDemo.updateData(insert);
out.print(a5);
%>

<script>
    function remove(){
        localStorage.removeItem("username");
    }
</script>
<body onload="remove()">
    <h1>Checkout Successfull!!!</h1>

    <h4>Thankyou for believing in our services :)</h4>
</body>
    