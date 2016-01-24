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
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author gabip
 */
public class guardarValoracion {

    public static String guardarValores(String idUser, String IdPartida, ArrayList<String> impacto, ArrayList<String> probabilidad, ArrayList<String> val) {
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
        try {
            Class.forName(driver).newInstance();
            conn = (Connection) DriverManager
                    .getConnection(url + dbName, userName, password);
            for (int i = 0; i < 12; i++) {
                pst = (PreparedStatement) conn
                        .prepareStatement("insert into class_riesgo( class_riesgo_idusuario, class_riesgo_idriesgo, class_riesgo_impacto, class_riesgo_probabilidad,class_riesgo_categoria,class_riesgo_idpartida) values (?, ?, ?, ?, ?,?)", PreparedStatement.RETURN_GENERATED_KEYS);
                pst.setInt(1, Integer.parseInt(idUser));
                pst.setInt(2, (i + 1));
                pst.setString(3, impacto.get(i));
                pst.setString(4, probabilidad.get(i));
                pst.setString(5, val.get(i));
                pst.setInt(6, Integer.parseInt(IdPartida));
                pst.execute();
            }
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

    public void upDatepuntuacion(String puntaje, String idPartida) {

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
        try {
            Class.forName(driver).newInstance();
            conn = (Connection) DriverManager
                    .getConnection(url + dbName, userName, password);
            for (int i = 0; i < 12; i++) {
                pst = (PreparedStatement) conn
                        .prepareStatement("update partida set partida_puntaje = ? where idpartida = ?");
                pst.setInt(1, Integer.parseInt(puntaje));
                pst.setInt(2, Integer.parseInt(idPartida));

                pst.execute();
            }
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
    }
}
