package booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateBookServlet")
public class updateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
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
		isTrue = BookControl.UpdateData(id ,name, email, mobile, nic, days, location, members, vehicle, from, to, comments);
		
		if(isTrue == true) {
			List<BookModel> bookdetails = BookControl.GetByID(id);
			request.setAttribute("bookdetails",bookdetails );
			
			String alertMessage = "Data Updated Successfully";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='AllBookings'</script>");
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
			
		}
	}

}
