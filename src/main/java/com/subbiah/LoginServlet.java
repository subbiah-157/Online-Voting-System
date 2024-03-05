package com.subbiah;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	@Resource(name="jdbc/votingsystem")
	private DataSource dataSource;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		Connection connection ;
		java.sql.Statement statement;
		ResultSet resultset;
		
		final String SELECT_QUERY = "SELECT * from votingsystem.singup";
		try {
			connection = dataSource.getConnection();
			statement = connection.createStatement();
			
			resultset =statement.executeQuery(SELECT_QUERY);
			int flag = 0;
			while (resultset.next()) {
				
				if(resultset.getString("Username").equals(request.getParameter("Username"))&&resultset.getString("Password").equals(request.getParameter("Password"))) {
//					HttpSession session = request.getSession();
//					String email = resultset.getString("email");
//					session.setAttribute("Email", email);
//					String name = resultset.getString("name");
//					session.setAttribute("Username", name);
//					String gender = resultset.getString("gender");
//					session.setAttribute("Gender", gender);
//					String phonenumber = resultset.getString("phonenumber");
//					session.setAttribute("PhoneNumber", phonenumber);
//					String address = resultset.getString("address");
//					session.setAttribute("Address", address);

					flag = 1;
					RequestDispatcher requestdispatcher=request.getRequestDispatcher("/Voting.jsp");
					requestdispatcher.forward(request, response);
					
				}
				if(!resultset.getString("Username").equals(request.getParameter("Username"))&&resultset.getString("Password").equals(request.getParameter("Password"))) {
					flag =2;
					
				}
				if(resultset.getString("Username").equals(request.getParameter("Username"))&&!resultset.getString("Password").equals(request.getParameter("Password"))) {
					flag =3;
					
				}
			}
				if(flag == 0) {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('incorrect Email and Password!!!')");
					out.println("</script>");
					RequestDispatcher requestdispatcher=request.getRequestDispatcher("/Login.jsp");
					requestdispatcher.include(request, response);	
			}
				if(flag == 2) {
					
					out.println("<script type=\"text/javascript\">");
					out.println("alert('incorrect Email !!!')");
					out.println("</script>");
					RequestDispatcher requestdispatcher=request.getRequestDispatcher("/Login.jsp");
					requestdispatcher.include(request, response);	
			}
				if(flag == 3) {
					
					out.println("<script type=\"text/javascript\">");
					out.println("alert('incorrect Password!!!')");
					out.println("</script>");
					RequestDispatcher requestdispatcher=request.getRequestDispatcher("/Login.jsp");
					requestdispatcher.include(request, response);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			out.println();
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
