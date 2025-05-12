package ManageUsers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			List<UserModel> userlogin = UserControl.UserLoginValidate(email, password);
			if(userlogin != null && !userlogin.isEmpty()) {
				String alertMessage = "Login Successful";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='addbook.jsp'</script>");
			}
			else {
				String alertMessage = "Invalid Email Address or Password, Please try again";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='userLogin.jsp'</script>");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
