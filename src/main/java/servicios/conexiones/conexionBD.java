/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servicios.conexiones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author C21936
 */
public class conexionBD {
    public Connection getConexion() throws SQLException{
        Connection cnx = null;
        
          String url = "jdbc:mysql://localhost:3306/bdhotelito?useTimeZone=true&"
                + "serverTimezone=UTC&autoReconnect=true";

        String user = "root";
        String clave = "";

        String Driver = "com.mysql.cj.jdbc.Driver";

        try {
            Class.forName(Driver);
            cnx = DriverManager.getConnection(url, user, clave);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(conexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return  cnx;
    }
    
   public static void main(String[] args) throws SQLException {
        Connection cn = new conexionBD().getConexion();
        System.out.println(""+cn.getCatalog());
    }
    
}
