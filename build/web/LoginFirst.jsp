<script>
    function allert(){
        alert("Login/Signup to continue shopping");
    }
        allert();
</script>
<%RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
                %>