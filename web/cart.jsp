<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.*"%>
<%@page import="jdbc.DAOLayerDemo"%>
<%
    String items="";
    int total1=0;
String user=request.getParameter("user");
String cart="select * from weborder where user='"+user+"'";
ResultSet rs=DAOLayerDemo.selectData(cart);%>

<h3>Your Order:</h3><hr>
<%
	JSONArray list = new JSONArray();
while(rs.next()){%>
  

<table>
    <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <%
        
        int amt=Integer.parseInt(rs.getString(4));
        total1=total1+amt;
                JSONObject obj1 = new JSONObject();
                obj1.accumulate("name", rs.getString(2));
                obj1.accumulate("quantity", rs.getString(3));
                obj1.accumulate("total", rs.getString(4));
        
        %>
        
    </tr>
</table>
    


<%
        list.put(obj1);
}
items="\"items:\""+list.toString();
%>
<hr>
<h3>Your total: <%= total1%></h3>
<fieldset>
   <legend>Order Delivery Details</legend>
<form action="checkout.jsp">
    <input type="hidden" name="user" value="<%=user%>">
    <input type="hidden" name="items" value="<%=items%>">
    <input type="hidden" name="total1" value="<%=total1%>">
    Mobile Number:<input type="number" name="phone" min="1000000000" max="9999999999" required>
    Delivery Address:<input type="text" name="address" required>
    <input type="submit" value="checkout">
</form>
</fieldset>