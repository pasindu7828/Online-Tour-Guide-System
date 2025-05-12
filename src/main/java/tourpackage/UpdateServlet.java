package tourpackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		String cardno=request.getParameter("cardno");
		String cardholder=request.getParameter("cardholder");
		String month=request.getParameter("month");
		String year=request.getParameter("year");
		String cvv=request.getParameter("cvv");
		String fullname=request.getParameter("fullname");
		String nic=request.getParameter("nic");
		String mobileno=request.getParameter("mobileno");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String postalcode=request.getParameter("postalcode");
		String district=request.getParameter("district");
		String country=request.getParameter("country");
		
		boolean isTrue;
		
		isTrue =paymentcontrol.updateData(id,cardno, cardholder, month, year, cvv, fullname, nic, mobileno, email, address, postalcode, district, country);
		
		if(isTrue==true) {
			List<paymentmodel> paydetails = paymentcontrol.getById(id);
			request.setAttribute("paydetails",paydetails);
			
			String alertMessage="Data updated successfully";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2= request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
