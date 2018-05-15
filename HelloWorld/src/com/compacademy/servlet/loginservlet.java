package com.compacademy.servlet;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.compacademy.BA.loginBA;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//System.out.println("we are in servlet");
		String username=request.getParameter("username");
		String password = request.getParameter("password");
		//String confirmpassword=request.getParameter("confirmpassword");
		System.out.println(username);
		//System.out.print(password);
		//System.out.println(confirmpassword);
		//if (password == confirmpassword) {
			//System.out.println("Correct password");
		//}
		//else {
		//	System.out.println("incorrect password");
		//}
		//PrintWriter writer=response.getWriter();
			//	writer.println("<html><head></head><body>"+username+"is logged in sucessfully"+"</body></html>");
		loginBA  lba= new loginBA();
		lba.LoginBA(username, password);
		
	}

}
