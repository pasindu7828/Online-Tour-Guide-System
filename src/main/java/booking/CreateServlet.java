package booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CreateServlet")
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String nic = request.getParameter("nic");
		String days = request.getParameter("days");
		String location = request.getParameter("location");
		String members = request.getParameter("members");
		String vehicle = request.getParameter("vehicle");
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String comments = request.getParameter("comments");
		
		boolean isTrue;
		isTrue = BookControl.InsertData(name, email, mobile, nic, days, location, members, vehicle, from, to, comments);
		
		if(isTrue == true) {
			String alertMessage = "Data insert Successfully";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='addbook.jsp'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
			
		}
		
	}

}
