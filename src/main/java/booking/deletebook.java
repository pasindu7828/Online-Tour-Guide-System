package booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletebook")
public class deletebook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		boolean isTrue;
		isTrue=BookControl.deleteData(id);
		
		if(isTrue==true) {
			String alertMessage ="Data delete successfull";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='AllBookings';</script>");
		}
		else {
			List<BookModel> bookDetails = BookControl.GetByID(id);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}

}
