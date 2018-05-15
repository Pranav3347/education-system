package com.compacademy.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.comacademy.Ba.submisionBA;

/**
 * Servlet implementation class submision
 */
@WebServlet("/submision")
public class submision extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public submision() {
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
		String submisionid = request.getParameter("sid");
		String requireid = request.getParameter("reqid");
		String conid = request.getParameter("conid");
		System.out.println(conid);
		System.out.println(requireid);
		System.out.println(submisionid);
		submisionBA sba = new submisionBA();
		sba.SubmisionBA(submisionid,requireid,conid);
	}

}
