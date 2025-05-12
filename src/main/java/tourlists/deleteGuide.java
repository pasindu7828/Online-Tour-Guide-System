package tourlists;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteGuide")
public class deleteGuide extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tid = request.getParameter("tid");
		boolean isTrue;
		isTrue=tourlistControl.deleteGuide(tid);
		
		if(isTrue == true) {
			String alertMessage = "Data Delete Successfully";
			response.getWriter().println("<script>alert('"+alertMessage+"'); "+"window.location.href='displayTourGuides';</script>");
			
		}
		else {
			List<tourlistmodel> guidedetails = tourlistControl.GetByTid(tid);
			request.setAttribute("guidedetails", guidedetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}

}
