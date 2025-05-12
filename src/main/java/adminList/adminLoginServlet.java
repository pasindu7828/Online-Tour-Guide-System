package adminList;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gmail = request.getParameter("gmail");
		String password = request.getParameter("password");
		
		try {
			List<adminModel> adminlogin = adminControl.adminLoginValidate(gmail, password);
			if(adminlogin != null && !adminlogin.isEmpty()) {
				String alertMessage = "Login Successful";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='dashboard.jsp'</script>");
			}
			else {
				String alertMessage = "Invalid Email Address or Password, Please try again";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='adminlogin.jsp'</script>");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
