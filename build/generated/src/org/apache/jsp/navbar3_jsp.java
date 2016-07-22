package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import jdbc.DAOLayerDemo;

public final class navbar3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/searchBar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    String user = request.getParameter("username");
    //String rid = request.getParameter("rid");
    //String restraunts="select * from category where Rid="+rid+";";
    //ResultSet rs=DAOLayerDemo.selectData(restraunts);

    String rid="1";
    String restraunt1[] = {"DeliverIt Hub", "Lal Quila", "Mio Amore", "Wild Berry", "Biggies"};
    int i = 0;
    String restraunt2[] = {"Angan", "The Hub"};
    //while(rs.next()){
    //restraunt[i]=rs.getString(1);



      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Bootstrap Example</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            function w3_open() {\n");
      out.write("                document.getElementById(\"mySidenav\").style.width = \"20%\";\n");
      out.write("                document.getElementById(\"mySidenav\").style.display = \"block\";\n");
      out.write("            }\n");
      out.write("            function w3_close() {\n");
      out.write("                document.getElementById(\"mySidenav\").style.display = \"none\";\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                position: relative; \n");
      out.write("            }\n");
      out.write("            #section1 {padding-top:50px;height:500px;color: #fff; background-color: #1E88E5;}\n");
      out.write("            #section2 {padding-top:50px;height:500px;color: #fff; background-color: #673ab7;}\n");
      out.write("            #section3 {padding-top:50px;height:500px;color: #fff; background-color: #ff9800;}\n");
      out.write("            #section41 {padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}\n");
      out.write("            #section42 {padding-top:50px;height:500px;color: #fff; background-color: #009688;}\n");
      out.write("            .sidenav {\n");
      out.write("                height: 100%;\n");
      out.write("                width: 0;\n");
      out.write("                position: fixed;\n");
      out.write("                z-index: 1;\n");
      out.write("                top: 0;\n");
      out.write("                left: 0;\n");
      out.write("                background-color: #111;\n");
      out.write("                overflow-x: hidden;\n");
      out.write("                transition: 0.5s;\n");
      out.write("                padding-top: 60px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidenav a {\n");
      out.write("                padding: 8px 8px 8px 32px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                font-size: 25px;\n");
      out.write("                color: #818181;\n");
      out.write("                display: block;\n");
      out.write("                transition: 0.3s\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .sidenav a:hover, .offcanvas a:focus{\n");
      out.write("                color: #f1f1f1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .closebtn {\n");
      out.write("                position: absolute;\n");
      out.write("                top: 0;\n");
      out.write("                right: 25px;\n");
      out.write("                font-size: 36px !important;\n");
      out.write("                margin-left: 50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @media screen and (max-height: 450px) {\n");
      out.write("                .sidenav {padding-top: 15px;}\n");
      out.write("                .sidenav a {font-size: 18px;}\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button {\n");
      out.write("                display: inline-block;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                background-color: #f4511e;\n");
      out.write("                border: none;\n");
      out.write("                color: #FFFFFF;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 28px;\n");
      out.write("                padding: 20px;\n");
      out.write("                width: 200px;\n");
      out.write("                transition: all 0.5s;\n");
      out.write("                cursor: pointer;\n");
      out.write("                margin: 5px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button span {\n");
      out.write("                cursor: pointer;\n");
      out.write("                display: inline-block;\n");
      out.write("                position: relative;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button span:after {\n");
      out.write("                content: '»';\n");
      out.write("                position: absolute;\n");
      out.write("                opacity: 0;\n");
      out.write("                top: 0;\n");
      out.write("                right: -20px;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span {\n");
      out.write("                padding-right: 25px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span:after {\n");
      out.write("                opacity:1;\n");
      out.write("                right: 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function openNav() {\n");
      out.write("                document.getElementById(\"mySidenav\").style.width = \"250px\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function closeNav() {\n");
      out.write("                document.getElementById(\"mySidenav\").style.width = \"0\";\n");
      out.write("            }\n");
      out.write("            function assign1(){\n");
      out.write("                document.getElementById(\"username\").innerHTML=localStorage.getItem(\"username\");\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"50\" onload=\"assign1()\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <table><tr>\n");
      out.write("                            <td style=\"margin:2%;padding: 2%\"><span style=\"font-size:30px;cursor:pointer;float:left;padding: 2%;margin: 2%;color: #ffffff\" onclick=\"openNav()\"><img src=\"images/settings.png\" width=\"35px\" height=\"35px\"></span></td>\n");
      out.write("\n");
      out.write("                            <td style=\"margin-left:50%;padding-left:20%;color:#ffffff\"><h2>DeliverIt</h2></td>\n");
      out.write("                            <td style=\"padding-left:200%;padding-top: 10%;\">\n");
      out.write("                                ");
      out.write("<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://code.getmdl.io/1.1.3/material.indigo-pink.min.css\">\n");
      out.write("    <script defer src=\"https://code.getmdl.io/1.1.3/material.min.js\"></script>\n");
      out.write("\n");
      out.write("<div id=\"form\" style=\"padding-left: 10%;padding-bottom: 1%;margin-bottom: 1%;border-bottom: 1px;color:#ffffff\"><!---#900c3f --ff5733 ->\n");
      out.write("            \n");
      out.write("                <form action=\"#\">\n");
      out.write("                    <!-- MDL class \"mdl-textfield--expandable\"-->\n");
      out.write("                    <div class=\"mdl-textfield mdl-js-textfield mdl-textfield--expandable\">\n");
      out.write("\n");
      out.write("                       <label class=\"mdl-button mdl-js-button mdl-button--icon\" for=\"sample-input\">\n");
      out.write("                            <i class=\"material-icons\">search</i>\n");
      out.write("                        </label>\n");
      out.write("\n");
      out.write("                        <!-- Expandable textfield Container -->\n");
      out.write("                        <div class=\"mdl-textfield__expandable-holder\">\n");
      out.write("                            <input class=\"mdl-textfield__input\" placeholder=\"Search\" type=\"text\" id=\"sample-input\" />\n");
      out.write("                            <label class=\"mdl-textfield__label\" for=\"sample-input\">Expandable Input</label>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div><hr>\n");
      out.write("                \n");
      out.write("</div>");
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <td style=\"padding-left:250%\"> \n");
      out.write("                                <img src=\"images/cart4.png\" width=\"35px\" height=\"35px\">\n");
      out.write("                            </td>\n");
      out.write("                            <td style=\"padding-left:300%\"> \n");
      out.write("                                <img src=\"images/user.png\" width=\"35px\" height=\"35px\">\n");
      out.write("                            </td>\n");
      out.write("                        </tr></table>\n");
      out.write("\n");
      out.write("                    <!-- <div id=\"header\">\n");
      out.write("                         <span style=\"font-size:30px;cursor:pointer;float:left;padding: 2%;margin: 2%;color: #ffffff\" onclick=\"openNav()\"><img src=\"images/settings.png\" width=\"35px\" height=\"35px\"><h2>DeliverIt</h2>\n");
      out.write("                     </span>\n");
      out.write("                         \n");
      out.write("                         <span style=\"float:left\">DeliverIt</span>\n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                     </div>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!--  <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                    \n");
      out.write("                      \n");
      out.write("                      <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>                        \n");
      out.write("                    \n");
      out.write("                </button>-->\n");
      out.write("                    \n");
      out.write("                    ");

    
                    
      out.write("\n");
      out.write("<span id=\"username\" style=\"float:left;color:#ffffff;font-size:180%;padding-left: 3%;font-family: veranda\"></span>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            \n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"myNavbar\" style=\"padding-left:20%\">\n");
      out.write("                    <br><br><br><br><br><br>\n");
      out.write("                    \n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        \n");
      out.write("                        <li><a href=\"#section1\">Restraunts</a></li>\n");
      out.write("                        <li><a href=\"#section2\">Evening Strolls</a></li>\n");
      out.write("                        <li><a href=\"#section3\">Drinks & beverages</a></li>\n");
      out.write("                        <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Section 4 <span class=\"caret\"></span></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"#section41\">Fruits</a></li>\n");
      out.write("                                <li><a href=\"#section42\">Grocery</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("                    <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\">×</a>\n");
      out.write("                    <a href=\"#\">About</a>\n");
      out.write("                    <a href=\"#\">Services</a>\n");
      out.write("                    <a href=\"#\">Clients</a>\n");
      out.write("                    <a href=\"#\">Contact</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </nav>\n");
      out.write("        <br>\n");
      out.write("       <div id=\"signupLoginSection\" style=\" float:right;margin-top: 8%;margin-bottom: 3%;margin-right: 3%;padding-bottom: 2%\">\n");
      out.write("           <br><br>\n");
      out.write("           <form action=\"signupLogin.jsp\">\n");
      out.write("                <input type=\"hidden\" name=\"rid\" value=\"");
      out.print(rid);
      out.write("\">\n");
      out.write("                       <input class=\"button\" type=\"submit\" name=\"submit\" value=\"Login/Signup\" >\n");
      out.write("            </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("        <div id=\"section1\" class=\"container-fluid\" style=\"padding-top:10%\">\n");
      out.write("            <h1>Restraunts</h1>\n");
      out.write("            <!--<p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>\n");
      out.write("            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>-->\n");
      out.write("            ");


                if (rid.equals("1")) {

                    for (int j = 0; j < restraunt1.length; j++) {
            
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <a href=\"");
      out.print(restraunt1[i]);
      out.write(".jsp\"><div style=\"float:left;padding:1%;margin: 1%;\"><img src=\"images/deliverit.png\"><br><br><span style=\"font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%\">");
      out.print(restraunt1[i]);
      out.write("</span></div></a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            ");
i++;
          }
      }
      out.write("\n");
      out.write("            ");

                if (rid.equals("2")) {
                    for (int k = 0; k < restraunt2.length; k++) {
            
      out.write("\n");
      out.write("            <div>\n");
      out.write("                <a href=\"#\"><div style=\"float:left;padding:1%;margin: 1%;\"><img src=\"images/deliverit.png\"><br><br><span style=\"font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%\">");
      out.print(restraunt2[i]);
      out.write("</span></div></a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            ");
i++;
          }
      }
      out.write("\n");
      out.write("\n");
      out.write("        </div> \n");
      out.write("        <div id=\"section2\" class=\"container-fluid\">\n");
      out.write("            <h1>Evening Strolls</h1>\n");
      out.write("            ");

                String evening="select * from subcategory where Cid=6";
                ResultSet rs=DAOLayerDemo.selectData(evening);
                while(rs.next()){
            
      out.write("\n");
      out.write("            <a href=\"");
      out.print(rs.getString(3));
      out.write(".jsp\"><div style=\"float:left;padding:1%;margin: 1%;\"><img src=\"images/deliverit.png\"><br><br><span style=\"font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%\">");
      out.print(rs.getString(3));
      out.write("</span></div></a>\n");
      out.write("       ");
}
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div id=\"section3\" class=\"container-fluid\">\n");
      out.write("            <br><br>\n");
      out.write("            <h1>Drinks & Beverages </h1>\n");
      out.write("            ");

                String beverages="select * from subcategory where Cid=7";
                ResultSet ds=DAOLayerDemo.selectData(beverages);
                while(ds.next()){
            
      out.write("\n");
      out.write("            <a href=\"");
      out.print(ds.getString(3));
      out.write(".jsp\"><div style=\"float:left;padding:1%;margin: 1%;\"><img src=\"images/deliverit.png\"><br><br><span style=\"font-family:veranda;padding-left:7%;margin-left: 7%;font-size:130%\">");
      out.print(ds.getString(3));
      out.write("</span></div></a>\n");
      out.write("       ");
}
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div id=\"section41\" class=\"container-fluid\">\n");
      out.write("            <h1>Fruits</h1>\n");
      out.write("            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>\n");
      out.write("            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"section42\" class=\"container-fluid\">\n");
      out.write("            <h1>Grocery</h1>\n");
      out.write("            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>\n");
      out.write("            <p>Try to scroll this section and look at the navigation bar while scrolling! Try to scroll this section and look at the navigation bar while scrolling!</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
