package com.dip.core.database;

import java.sql.*;
import java.util.Locale;

public class JdbcHelper {

    public static Connection getConnection() {

        String dbName = "XE";
        String dbURL="jdbc:oracle:thin:@talismanov-pc:1521/" + dbName;
        Locale.setDefault(new Locale("en", "US"));
        Connection connection = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(dbURL, "HACKATON", "HACKATON");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void main(String[] args) throws SQLException {
        Connection connection = JdbcHelper.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT USER FROM DUAL");
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            System.out.println("resultset result " + resultSet.getString(1));
        }
    }
}