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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author gabip
 */
public class IniciarPartida {

    public static String nuevaPartida(String idUser) {
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String url = "jdbc:mysql://104.236.0.177:3306/";
        String dbName = "gestionderiesgo";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "mariagabriela";
        String id = "0";
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        try {
            Class.forName(driver).newInstance();
            conn = (Connection) DriverManager
                    .getConnection(url + dbName, userName, password);

            pst = (PreparedStatement) conn
                    .prepareStatement("insert into partida( patida_idusuario, partida_idcurso, partida_fecha, partida_idcaso,partida_puntaje) values (?, ?, ?, ?, ?)", PreparedStatement.RETURN_GENERATED_KEYS);
            pst.setInt(1, Integer.parseInt(idUser));
            pst.setInt(2, 1);
            pst.setString(3, dateFormat.format(date));
            pst.setInt(4, 1);
            pst.setInt(5, 0);
            pst.execute();
            rs= pst.getGeneratedKeys();
            while (rs.next()) {
                id = rs.getString(1);
                status = true;

            }
          //  System.out.println(status);
            //System.out.println("ID: " + id);

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
