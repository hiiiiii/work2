package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<!---<head>\n");
      out.write("  <script type=\"text/javascript\" src=\"jquery-2.2.2.min.js\">\n");
      out.write("</script>\n");
      out.write("<!--  <script>\n");
      out.write("    $(document).ready(function(){\n");
      out.write("        $(\"text\").keyup(function(){\n");
      out.write("            search();\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("<script>\n");
      out.write("    var input=document.getElementById(\"input\");\n");
      out.write("    function search(){\n");
      out.write("        document.getElementById(\"myForm\").submit();\n");
      out.write("    }\n");
      out.write("    input.addEventListener('keyup',search);\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("    $('#input').bind('keyup',function(){\n");
      out.write("        $('#myForm').delay(200).submit();\n");
      out.write("    });\n");
      out.write("    \n");
      out.write("    $(\"#myForm\").submit(function(keyup){\n");
      out.write("        keyup.preventDefault();\n");
      out.write("        $.ajax({\n");
      out.write("            type: \"post\",\n");
      out.write("            datatype: \"html\",\n");
      out.write("            url: 'localhost:8084/searchText/doSearch.jsp',data: $(\"#myForm\").serialize()}\n");
      out.write("        \n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("</script>--->\n");
      out.write("<!--\n");
      out.write("<h4>Search here </h4>\n");
      out.write(" ");
//
 //String search1=request.getParameter("search");
 //if(search1==null)
   //  search1="";
 
      out.write("\n");
      out.write(" <script>\n");
      out.write("    \n");
      out.write("      function submit1(){\n");
      out.write("   \n");
      out.write("   document.forms[1].submit();\n");
      out.write("      }\n");
      out.write("       var l=_.debounce(submit1,2000);\n");
      out.write("       \n");
      out.write("       \n");
      out.write("      \n");
      out.write("  </script>\n");
      out.write("  <script src=\"//code.jquery.com/jquery-1.1.1.2.min.js\"></script>\n");
      out.write("<!--  <script>\n");
      out.write("  $(document).ready(function(){\n");
      out.write("  $(\"#input\").keyup(function(){\n");
      out.write("      var str=$(this).val();\n");
      out.write("      setTimeout(function(){\n");
      out.write("          if(str==$(\"#input\").val()){}},000);\n");
      out.write("      });\n");
      out.write("  });    \n");
      out.write("  \n");
      out.write("      \n");
      out.write("\n");
      out.write("  </script>-->\n");
      out.write("  \n");
      out.write(" <!--<script>\n");
      out.write("   $('input').keyup(debounce(function(){\n");
      out.write("       var $this=$(this);\n");
      out.write("       var n1=$('#input').val();,5000);\n");
      out.write("   });   \n");
      out.write("  </script>-->\n");
      out.write(" <!--<script>\n");
      out.write("     var typingTimer=0;\n");
      out.write("     var doneTypingInterval=5000;\n");
      out.write("     $('#input').keyup(function(){\n");
      out.write("         clearTimeout(typingTimer);\n");
      out.write("         if($('#input').val()){\n");
      out.write("             typingTimer=setTimeout(doneTyping,doneTypingInterval);}});\n");
      out.write("     function doneTyping(){\n");
      out.write("         form.submit();\n");
      out.write("         }\n");
      out.write("     })\n");
      out.write(" </script>-->\n");
      out.write(" <!--<script>\n");
      out.write("     document.return.submit();\n");
      out.write(" </script>-->\n");
      out.write(" <!-- <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://code.jquery.com/ui/1.9.2/jquery-ui.js\"></script>\n");
      out.write(" <!--<script>\n");
      out.write("  var globalTimeout=null;\n");
      out.write("  $(\"#input\").keyup(function(){\n");
      out.write("      if(globalTimeout)\n");
      out.write("          clearTimeout(globalTimeout);\n");
      out.write("      globalTimeout=setTimeout(function(){\n");
      out.write("        \n");
      out.write("    form.submit();\n");
      out.write("        console.log(\"now search\");\n");
      out.write("      },2000);\n");
      out.write("});\n");
      out.write("  \n");
      out.write("     \n");
      out.write("    function submitForm(){\n");
      out.write("  globalTimeout=null;\n");
      out.write("    document.getElementById(\"input\").value=document.getElementById(\"dispatcher\").value;\n");
      out.write("     document.forms[1].submit();\n");
      out.write("   }\n");
      out.write("   </script>-->\n");
      out.write("<!-- </head>\n");
      out.write("\n");
      out.write(" \n");
      out.write("  \n");
      out.write(" <body>\n");
      out.write("     <form id=\"indicator\">\n");
      out.write("         <input type=\"hidden\" id=\"dispatcher\" name=\"searcher\" >\n");
      out.write("     </form>\n");
      out.write("    \n");
      out.write("<form action=\"index.jsp\" id=\"myForm\">\n");
      out.write("    <input type=\"text\" id=\"input\" name=\"search\" value=\"");
//=search1
      out.write("\" onkeyup=\"l();\">\n");
      out.write("    \n");
      out.write("   \n");
      out.write("</form><br>\n");
      out.write("<script>\n");
      out.write("    function search(){\n");
      out.write("        document.getElementById('myForm').submit();\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
//@include file="doSearch.jsp" 
      out.write("\n");
      out.write("</body>--->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!----------------------------------------------new index----------->\n");
      out.write("<script>\n");
      out.write("    function assign(){\n");
      out.write("        document.getElementById(\"user\").value=localStorage.getItem(\"username\");\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<form action=\"navbar3.jsp\">\n");
      out.write("    <input type=\"text\" name=\"rid\">\n");
      out.write("    <input id=\"user\" type=\"hidden\" name=\"username\">\n");
      out.write("    <input type=\"submit\" onsubmit=\"assign()\" value=\"submit\">\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
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
