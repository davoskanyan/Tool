package servlets;

import connection.GetConnection;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by Voskanyan on 12/28/2015.
 */
public class SignUpServlet  extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        Connection connection = GetConnection.getConnection();
        PreparedStatement preparedStatement = null;
        String sqlQuery = "EXEC addNewUser @Username = ?, @Password = ?, @FirstName = ?, @LastName = ?";
        try {
            preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, firstName);
            preparedStatement.setString(4, lastName);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("index2.jsp");
    }
}
