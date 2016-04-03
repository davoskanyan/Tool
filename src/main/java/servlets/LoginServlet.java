package servlets;

import connection.GetConnection;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Voskanyan on 11/25/2015.
 */
public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        String login = request.getParameter("login");
        String password = request.getParameter("password");

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String firstName = "";
        String lastName = "";
        int role = -1;
        Connection connection = GetConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sqlQuery = "EXEC dbo.getUserByUsernameAndPassword @Username = ?, @Password = ?";
        try {
            preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
                firstName = resultSet.getString(6);
                lastName = resultSet.getString(7);
                role = resultSet.getInt(4);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String responseString = firstName + " " + lastName;
        PrintWriter out = response.getWriter();

        session.setAttribute("firstName", firstName);
        session.setAttribute("lastName", lastName);
        session.setAttribute("role", role);
        out.print(responseString);
        response.sendRedirect("index.jsp");
    }
}
