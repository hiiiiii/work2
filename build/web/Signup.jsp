<%@page import="jdbc.DAOLayerDemo"%>
<%@page import="java.sql.ResultSet"%>
<%
        
    String rid=request.getParameter("rid");
    String otp = request.getParameter("otp");
    String number = request.getParameter("phone");
    String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
    String search = "select * from verification where phone='" + number + "' and otp='" + otp + "';";
    //try {
        ResultSet rs = DAOLayerDemo.selectData(search);
        if (rs.next()) {
            String mobiles =number;
            
            String del = "delete from verification where phone='" + mobiles + "' and otp='" + otp + "'";
            int a2 = DAOLayerDemo.updateData(del);

             String insert = "insert into newuser (name,email,phone,password) values('" + username + "','"+email+"','" + number + "','" + password+"');";
             
            int a6=DAOLayerDemo.updateData(insert);
            out.print("No. of rows insert in newuser is: "+a6+"<br>");
           %>
    <script>
        function allert(){
            alert("Signup Successful.Please login to continue. ")
        }
        allert();
    </script>
    <%RequestDispatcher rd = request.getRequestDispatcher("navbar3.jsp");
             rd.include(request, response);}
         
    else {
            out.print("otp didnt matched");
            RequestDispatcher rd = request.getRequestDispatcher("hello.jsp");
            rd.include(request, response);

        }
    //} catch (Exception e) {
      //  out.print("Error");
    //}


%>
