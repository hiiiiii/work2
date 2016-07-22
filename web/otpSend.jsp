
<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.DAOLayerDemo"%>
<%//@page import="jdbc.DAOLayerDemo"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%! public static int l=10000;%>

    
<%
l=l+2432;
     if(l>60000){
         l=10843;
     }
      
      String rid=request.getParameter("rid");
   String mobiles=request.getParameter("phone");
   String username=request.getParameter("username");
   String email=request.getParameter("email");
   String password=request.getParameter("password");
   String confirmpassword=request.getParameter("confirmpassword");
   
   String check="select * from newuser where phone='"+mobiles+"' and email='"+email+"';";
ResultSet cs=DAOLayerDemo.selectData(check);
if(cs.next()){%>

<%
RequestDispatcher rd=request.getRequestDispatcher("wrongSignup.jsp");
                rd.forward(request, response);
}
//Your authentication key
// String authkey = "110405AvkaKjf1RmSB57134526";
 String authkey = "117347AHMEQaZOzc577b7c45";
 //String authkey ="_gVUbVk7XBmEqA20BVnOcYjYfWZySmmdspthyENxB2HFN-HlARjLn-cGEsv2hZc9VBlyWSm2A9TaQDLzj2gejlQoqXmnmUC54H1GBtyrpdUUMCFrQlPH_QQ-0PpRDzy48YzZsIyiIlbRHZ4GS3YwfA==";
//Multiple mobiles numbers separated by comma
    //String mobiles = "7077100622";
//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "DLIVRT";
//Your message to send, Add URL encoding here.
String message = "Your Otp for DeliverIt is: "+l;
//define route
String route="4";

//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;

//encoding message 
String encoded_message=URLEncoder.encode(message);

//Send SMS API
String mainUrl="https://control.msg91.com/api/sendhttp.php?";

//Prepare parameter string 
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("authkey="+authkey); 
sbPostData.append("&mobiles="+mobiles);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);

//final string
mainUrl = sbPostData.toString();
try
{
    //prepare connection
    myURL = new URL(mainUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    //reading response 
    String response1;
    while ((response1 = reader.readLine()) != null) 
    //print response 
//    System.out.println(response1);
    
    //finally close connection
    reader.close();
} 
catch (IOException e) 
{ 
	e.printStackTrace();
} 

String p="insert into verification values('"+mobiles+"',"+l+")";
l=l+1354;
int ar=DAOLayerDemo.updateData(p);
//RequestDispatcher rd=request.getRequestDispatcher("Signup1.jsp");
  //              rd.forward(request, response);
  //*/  
%>

 <div>
        <form action="Signup.jsp">
           <%=username%>
            Enter Otp:<input type="text" name="otp">
           <input type="hidden" name="phone" value="<%=mobiles%>">
           <input type="hidden" name="username" value="<%=username%>">
           <input type="hidden" name="email" value="<%=email%>">
           <input type="hidden" name="password" value="<%=password%>">
           <input type="hidden" name="rid" value="<%=rid%>">
            <input type="submit"  value="submit">
        </form>
    </div>