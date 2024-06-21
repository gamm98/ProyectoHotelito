/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.dto.mTipoSugerencia;
import modelo.dto.msugerencia;
import modelo.dto.msugerencia;
import servicios.conexiones.conexionBD;

public class SugerenciasDAO {

    private Connection cnx;

    public SugerenciasDAO() throws SQLException {
        cnx = new conexionBD().getConexion();
    }

    public msugerencia get(int idx) {
        msugerencia m = null;
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "SELECT idsugerencia, nombresuge, correosuge, infosuge,idtiposuge FROM sugerencia where idsugerencia=?";
        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setInt(1, idx);
            rs = ps.executeQuery();
            if (rs.next()) {
                m = new msugerencia();
                m.setIdsugerencia(rs.getInt("idsugerencia"));
                m.setNombresuge(rs.getString("nombresuge"));
                m.setCorreosuge(rs.getString("correosuge"));
                m.setInfosuge(rs.getString("infosuge"));

                m.setMtiposugerencia(new mTipoSugerencia(rs.getInt("idtiposuge"), ""));

            }
        } catch (SQLException ex) {
        }
        return m;
    }

    public String delete(int idx) {
        String resp = "";
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "DELETE FROM sugerencia where idsugerencia=?";
        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setInt(1, idx);
            int ctos = ps.executeUpdate();
            if (ctos == 0) {
                resp = "No se ha eliminado";
            }
            ps.close();
        } catch (SQLException ex) {
            resp = ex.getMessage();
        }
        return resp;
    }

    public String insertUpdate(msugerencia m) {
        String resp = "";
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "INSERT INTO sugerencia (nombresuge, correosuge, infosuge,idtiposuge) VALUES(?,?,?,?) ";
        if (m.getIdsugerencia()!= 0) {
            cadSQL = "UPDATE sugerencia SET nombresuge=?, correosuge=?, infosuge=?, idtiposuge=? WHERE idtiposuge = ?";
        }
        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setString(1, m.getNombresuge());
            ps.setString(2, m.getCorreosuge());
            ps.setString(3, m.getInfosuge());
            ps.setInt(4, m.getMtiposugerencia().getIdtiposuge());
            if (m.getIdsugerencia()!= 0) {
                ps.setInt(5, m.getIdsugerencia());
            }
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
