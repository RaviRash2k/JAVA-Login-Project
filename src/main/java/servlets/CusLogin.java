package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;
import Services.Service;

@WebServlet("/CusLogin")
public class CusLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer cus = new Customer();
		
		cus.setEmail(request.getParameter("email"));
		cus.setPass(request.getParameter("pass"));
		
		
		Service service = new Service();
		
		boolean status = service.log(cus);
		
		if(status) {
			Customer cus2 = service.welcome(cus);
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			request.setAttribute("CusDetails", cus2);
			rd.forward(request, response);
		}
		
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
	}

}
