<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<%
    String s1="";String s2="";
String search=request.getParameter("search");
if(search==null || search==""){
    search="";
}
else{
String l="select * from deliveritItems where item like '%"+search+"%';";
ResultSet rs=DAOLayerDemo.selectData(l);
//if(!rs.next()){
  //  out.print("No Match Found");
//}
while(rs.next()){
    s1=rs.getString(1);
    s2=rs.getString(2);%>
<br>
<br>
<table>
    <tr>
        <td><%=s1%></td>
        <td><%=s2%></td>
    </tr>
</table>
    <%}}%>