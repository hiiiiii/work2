<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>

<table>
    <tr>
        <td>Product</td><td>Price</td><td>Availability</td>
    </tr>
    <tr>
<%
String select="select * from product where Cid=2 and Sid=22";

ResultSet rs=DAOLayerDemo.selectData(select);
while(rs.next()){
    String name=rs.getString(4);
    String price=rs.getString(5);
    String avail=rs.getString(7);%>

    <td><%=name%></td>
    <td><%=price%></td>
    <td><%=avail%></td>
    
    </tr>
<%}
%>
    
</table>