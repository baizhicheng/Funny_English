package com.product.register.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String uname = request.getParameter("uname");
    	String passwd = request.getParameter("pass");
		if("123".equals(passwd)){
			request.setAttribute("username", uname);
			RequestDispatcher rd = 
			request.getRequestDispatcher(
					"/main.jsp");
			rd.forward(request, response);
			HttpSession s = request.getSession();
			s.setAttribute("uname", uname);
		}else{
		RequestDispatcher rd = 
				request.getRequestDispatcher(
						"/login.jsp");
			rd.forward(request, response);
		
		}
	}

}
