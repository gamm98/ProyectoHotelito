/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.mTipoSugerencia;
import modelo.dto.msugerencia;
import servicios.conexiones.conexionBD;
public class TipoSugerenciasDAO {
    private Connection cnx;
    public TipoSugerenciasDAO() throws SQLException{
    cnx= new conexionBD().getConexion();
}
    public List<mTipoSugerencia> getList(){
        List<mTipoSugerencia> lista =null ;
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "select idtiposuge, nombretiposuge from tiposugerencia";
        try {
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                mTipoSugerencia c = new mTipoSugerencia(
                        rs.getInt("idtiposuge"),
                        rs.getString("nombretiposuge"));
                lista.add(c);
            }
            rs.close();
        } catch (SQLException ex) {
        }
        return lista;
    }
}
