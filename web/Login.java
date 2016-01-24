/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gabip
 */
public class Login {

    public static String validate(String name, String pass) {
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String url = "jdbc:mysql://104.236.0.177:3306/";
        String dbName = "gestionderiesgo";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "pegazo13";
        String id = "0";

        try {
            Class.forName(driver).newInstance();
            conn = (Connection) DriverManager
                    .getConnection(url + dbName, userName, password);

            pst = (PreparedStatement) conn
                    .prepareStatement("select idusuario from usuario where usuario_user=? and usuario_pass=?");
            pst.setString(1, name);
            pst.setString(2, pass);
            rs = pst.executeQuery();
            while (rs.next()) {
                id = rs.getString(1);
                status = true;

            }
            System.out.println(status);
            System.out.println("ID: " + id);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return id;
    }
}
