<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<%
    
String rid=request.getParameter("rid");
String email=request.getParameter("email");
String password=request.getParameter("password");
String check="select * from newuser where email='"+email+"' and password='"+password+"';";
ResultSet ps=DAOLayerDemo.selectData(check);
if(ps.next()){
%>
<script>
    function alert1(){
        alert("Improper user details");
    }
    if (typeof(Storage) !== "undefined") {
    // Store
    localStorage.setItem("username","<%=ps.getString(1)%>");
    // Retrieve
    
   // document.getElementById("result").innerHTML = localStorage.getItem("lastname");
} else {
    document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Storage...";
}
</script>
    

<%
    /* Cookie pk[] = request.getCookies();
                    String user = "";
    if(pk!=null){
        for (int k = 0; k < pk.length; k++) {
       //user1[i]=ck[i].getName();user2[i]=ck[i].getValue();
    String userkey=pk[k].getName();
    String uservalue=pk[k].getValue();
    if(userkey.equals("username")){
        
        user=ps.getString(1);}  }              
    
        if(user=="" || user==null || user.equals("ram")){
              Cookie dk = new Cookie("username",ps.getString(1));
    dk.setMaxAge(60 * 2);
    response.addCookie(dk);
    }}*/
RequestDispatcher rd=request.getRequestDispatcher("navbar3.jsp");
                rd.include(request, response);
}
else{%>
<script>
    alert1();
</script>
<%
    RequestDispatcher rd=request.getRequestDispatcher("signupLogin.jsp");
                rd.include(request, response);}
%>