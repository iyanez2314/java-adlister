package Models;

import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBCEmployees {
    public static void main(String[] args) {
        try {
            DriverManager.registerDriver(new Driver());

            // Create connection
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/employees?serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true",
                    "root",
                    "codeup"
            );

            Statement statement = connection.createStatement();

            ResultSet rs = statement.executeQuery("SELECT * FROM employees LIMIT 10;");

            List<Object> userNames = new ArrayList<>();

            while (rs.next()){
                userNames.add(rs.getString("first_name"));
            }
            System.out.println(userNames);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
