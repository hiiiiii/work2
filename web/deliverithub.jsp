<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<html>
    <div class="mdl-card">
        <span>DELIVERIT HUB</span>
        <hr>
        <%
        String select="select * from deliverithub where genre='Chicken Kadhai Items';";
       ResultSet rs=DAOLayerDemo.selectData(select);
        while(rs.next()){
            out.print(rs.getString(1)+"<br>");
        }
        %>
        
    </div>
</html>