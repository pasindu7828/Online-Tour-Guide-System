package ManageUsers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminList.adminControl;


@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		
		
        boolean isTrue;
		
		isTrue= UserControl.createData(name, email, password, phone);
		
		if(isTrue==true) {
			String alertMessage ="Register Successfully";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='userLogin.jsp'</script>");
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
