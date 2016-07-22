<script>
    function alert1(){
        alert("Enter details already exits.Please change ph.number or emailId");
    }
</script>
<script>
    alert1();
</script>
<%
    
RequestDispatcher rd=request.getRequestDispatcher("signupLogin.jsp");
                rd.include(request, response);
%>