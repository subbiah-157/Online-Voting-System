
package com.subbiah;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	@Resource(name="jdbc/votingsystem")
	private DataSource dataSource;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		Connection connection;
		PreparedStatement preparedstatement;
		
		final String INSERT_QUERY ="insert into votingsystem.singup(Username,Password,Email,MobileNumber) values(?,?,?,?)";
		try {
			connection = dataSource.getConnection();
			preparedstatement = connection.prepareStatement(INSERT_QUERY);
			preparedstatement.setString(1,request.getParameter("Username"));
			preparedstatement.setString(2,request.getParameter("Password"));
			preparedstatement.setString(3,request.getParameter("Email"));
			preparedstatement.setString(4,request.getParameter("MobileNumber"));
			
			
			
			int Status = preparedstatement.executeUpdate();
			response.setContentType("text/html");
			out.println("<html><head></head><body onload=\"alert('hello')\"></body></html>");
			
			
			if(Status!=0) {
				RequestDispatcher requestDispatcher=request.getRequestDispatcher("/Login.jsp");
				requestDispatcher.forward(request, response);
			out.println("Hi "+request.getParameter("Name"));
			
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
