package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class IniciarSesion_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<title>Sign up</title>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link href=\"css/estilos.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("<body> \n");
      out.write("\t<div class=\"contenedor\">\n");
      out.write("\t\t<form action=\"\" class=\"form\">\n");
      out.write("\t\t<div class=\"form-header\">\n");
      out.write("\t\t\t<h1 class=\"form-title\">I<span>niciar Sesion</span></h1>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<label for=\"alias\" class=\"form-label\">Nickname:</label>\n");
      out.write("\t\t<input type=\"text\" id=\"alias\" class=\"form-input\" placeholder=\"Escriba su Nickname\">\n");
      out.write("\n");
      out.write("\t\t<label for=\"contraseña\" class=\"form-label\">Contraseña:</label>\n");
      out.write("\t\t<input type=\"text\" id=\"contraseña\" class=\"form-input\" placeholder=\"Escriba su Contraseña\">\n");
      out.write("\n");
      out.write("\t\t<input type=\"submit\" class=\"btn-submit\" value=\"Registrar\">\n");
      out.write("\t\t</form>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
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
