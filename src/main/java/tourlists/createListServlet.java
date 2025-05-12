package tourlists;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/createListServlet")
public class createListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String email=request.getParameter("email");
		String phoneno=request.getParameter("phoneno");
		String language=request.getParameter("language");
		String duration=request.getParameter("duration");
		String price=request.getParameter("price");
		String description=request.getParameter("description");
		
		boolean isTrue;
		
		isTrue= tourlistControl.createData(name, age, email, phoneno, language, duration, price, description);
		
		if(isTrue==true) {
			String alertMessage ="Data insert successfully";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='displayTourGuides'</script>");
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
