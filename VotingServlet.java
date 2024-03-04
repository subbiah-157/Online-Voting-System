package com.subbiah;


import java.io.IOException;
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


@WebServlet("/VotingServlet")
public class VotingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Resource(name="jdbc/votingsystem")
    private DataSource datasource;
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection connection=datasource.getConnection();
			String name=request.getParameter("candidates");
			System.out.println(name);
			PreparedStatement preparedstatement=connection.prepareStatement("update voting set Votes=Votes+1 where Candidates=?");
			preparedstatement.setString(1, name);
			preparedstatement.execute();
			RequestDispatcher requestdispatcher=request.getRequestDispatcher("/finalout.html");
			requestdispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}

