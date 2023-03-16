package dao;

import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection;


    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
           connection = DriverManager.getConnection(
                   config.getUrl(),
                   config.getUser(),
                   config.getPassword()
           );
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Ad> all() {
        List <Ad> ads = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
            while(rs.next()){
                Ad ad = new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                );
                ads.add(ad);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return ads;
    }

    @Override
    public Long insert(Ad ad) {
        String sql = "INSERT INTO ads (user_id, title, description) VALUES (?, ?, ?)";
        Long test = 0L;
        try {
            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet generatedIdResultSet = stmt.getGeneratedKeys();
            while (generatedIdResultSet.next()){
                Long generatedId = generatedIdResultSet.getLong(1);
                test = generatedId;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return test;
    }

    public static void main(String[] args) {
        MySQLAdsDao ms = new MySQLAdsDao(new Config());
        Ad newAd = new Ad(2, "this is a string", "this is a description");
        System.out.println(ms.all());
        System.out.println(ms.insert(newAd));
    }
}
