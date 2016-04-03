package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Voskanyan on 11/25/2015.
 */
public class GetConnection {
    public static Connection connection;

    public static void openConnection() {
        String url = "jdbc:jtds:sqlserver://localhost:1433/Tool";
        String userName = "David";
        String password = "voskanyan1";
        String dr = "net.sourceforge.jtds.jdbc.Driver";
        try {
            Class.forName(dr);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection = DriverManager.getConnection(url, userName, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        if(connection == null) {
            openConnection();
        }
        return connection;
    }
}
