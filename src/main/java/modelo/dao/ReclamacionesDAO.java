/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.dto.mreclamaciones;
import servicios.conexiones.conexionBD;

public class ReclamacionesDAO {

    private Connection cnx;

    public ReclamacionesDAO() throws SQLException {
        cnx = new conexionBD().getConexion();
    }

    public mreclamaciones get(int idx) {
        mreclamaciones m = null;
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "SELECT idreclamaciones, nombrerec, dnirec, correorec,fecharec, descripcionrec FROM reclamaciones where idreclamaciones=?";
        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setInt(1, idx);
            rs = ps.executeQuery();
            if (rs.next()) {
                m = new mreclamaciones();
                m.setIdrec(rs.getInt("idreclamaciones"));
                m.setNombrerec(rs.getString("nombrerec"));
                m.setCorreorec(rs.getString("correorec"));
                m.setFecharec(rs.getString("fecharec"));
                m.setDesripcionrec(rs.getString("descripcionrec"));
            }
        } catch (SQLException ex) {
        }
        return m;
    }

    public String insertUpdate(mreclamaciones m) {
        String resp = "";
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "INSERT INTO reclamaciones (nombrerec, dnirec, correorec, fecharec, descripcionrec) VALUES(?,?,?,?,?) ";
        if (m.getIdrec() != 0) {
            cadSQL = "UPDATE reclamaciones SET nombrerec=?, dnirec=?, correorec=?, fecharec=?, descripcionrec=? WHERE idreclamaciones = ?";
        }
        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setString(1, m.getNombrerec());
            ps.setString(2, m.getDnirec());
            ps.setString(3, m.getCorreorec());
            ps.setString(4, m.getFecharec());
            ps.setString(5, m.getDesripcionrec());

            int ctos = ps.executeUpdate();
            if (ctos == 0) {
                resp = "No se ha registrado";
            }
            ps.close();
        } catch (SQLException ex) {
            resp = ex.getMessage();
        }
        return resp;
    }
}
