<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<%
String otp=request.getParameter("recievedOtp");
        String number=request.getParameter("recievedNumber");
        String search="select * from otp where phone='"+number+"' and otp='"+otp+"';";
        try{
        ResultSet rs=DAOLayerDemo.selectData(search);
        if(rs.next()){
            String del="delete from otp where phone='"+number+"' and otp='"+otp+"'";
            int a2=DAOLayerDemo.updateData(del);
            out.print("OTP matched");
            RequestDispatcher rd=request.getRequestDispatcher("hello.jsp");
                rd.include(request, response);}
        else{
            out.print("otp didnt matched");
            RequestDispatcher rd=request.getRequestDispatcher("hello.jsp");
                rd.include(request, response);
            
        }
        }catch(Exception e){
        out.print("");
    }%>