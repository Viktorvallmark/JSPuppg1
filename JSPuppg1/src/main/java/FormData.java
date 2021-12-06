import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

  
@SuppressWarnings("serial")
public class FormData extends HttpServlet{  
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response)  
			throws ServletException,IOException  
{  
		
String pagenumber = request.getParameter("Homepage");

switch (pagenumber) {

case "second_page.jsp": response.sendRedirect(pagenumber);
	break;
case "third_page.jsp": response.sendRedirect("third_page.jsp?Homepage="+pagenumber);
	break;
case "fourth_page.jsp": response.sendRedirect("fourth_page.jsp?Homepage="+pagenumber);
	break;
default: break;


}



}

}




  



