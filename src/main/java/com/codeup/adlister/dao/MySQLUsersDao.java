package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users{

    private Connection connection;

    public MySQLUsersDao(Config config) {
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
    public User findByUsername(String username) {
        return findByUsernameHelper(username);
    }

    public User findByPassword(String password){
        return findByPasswordHelper(password);
    }

    @Override
    public Long insert(User user) {
        return insertHelper(user);
    }


    private User findByPasswordHelper(String password){
        String sql = "SELECT id, username, email, password FROM user WHERE password = ?";
        User fetchedUser;
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, password);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                Long fetchedId = rs.getLong("id");
                String fetchedUsername = rs.getString("username");
                String fetchedEmail = rs.getString("email");
                String fetchedPassword = rs.getString("password");
                User user = new User(fetchedId, fetchedUsername, fetchedEmail, fetchedPassword);
                fetchedUser = user;
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return fetchedUser;
    }


    private User findByUsernameHelper(String username){
        String sql = "SELECT id, username, email, password FROM user WHERE username = ?";
        User fetchedUser;
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if(rs.next()){
                Long fetchedId = rs.getLong("id");
                String fetchedUsername = rs.getString("username");
                String fetchedEmail = rs.getString("email");
                String fetchedPassword = rs.getString("password");
                User user = new User(fetchedId, fetchedUsername, fetchedEmail, fetchedPassword);
                fetchedUser = user;
            } else {
                return null;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return fetchedUser;
    }

    private Long insertHelper(User user){
        String sql = "INSERT INTO user (username, email, password) VALUES (?, ?, ?)";
        Long userGeneratedKey = 0L;
        try {
            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet generateIdResultSet = stmt.getGeneratedKeys();
            if(generateIdResultSet.next()){
                Long generatedId = generateIdResultSet.getLong(1);
                userGeneratedKey = generatedId;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return userGeneratedKey;
    };
}
