package modelo.dao;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import servicios.conexiones.conexionBD;

/**
 *
 * @author MOTITA2204
 */
public class ProductoDAO {
    Connection cnx;
    servicios.conexiones.conexionBD cn=new conexionBD();
    PreparedStatement ps;
    ResultSet rs;
    public Producto listarId(int id){
        String sql="select * from producto where idProducto="+id;
        Producto p=new Producto();
        try{
            cnx=cn.getConexion();
            ps=cnx.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getBinaryStream(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
            }
            
        }catch (Exception e){
            
        }
        return p;
    }
    public List listar(){
        List<Producto>productos=new ArrayList();
        String sql="select * from producto";
        try{
            cnx=cn.getConexion();
            ps=cnx.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Producto p=new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getBinaryStream(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                productos.add(p);
                
            }
        }catch(Exception e){
            
        }
        return productos;
    }
    public void listarImagen(int id, HttpServletResponse response) {
    String sql = "SELECT Foto FROM producto WHERE idProducto = ?";
    InputStream inputStream = null;
    OutputStream outputStream = null;
    BufferedInputStream bufferedInputStream = null;
    BufferedOutputStream bufferedOutputStream = null;

    response.setContentType("image/png"); // O el tipo de imagen que corresponda

    try (Connection cnx = cn.getConexion();
         PreparedStatement ps = cnx.prepareStatement(sql)) {

        ps.setInt(1, id);
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                inputStream = rs.getBinaryStream("Foto");
            }
        }

        if (inputStream != null) {
            outputStream = response.getOutputStream();
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }
        }
    } catch (SQLException | IOException e) {
        e.printStackTrace();
    } finally {
        try {
            if (bufferedInputStream != null) bufferedInputStream.close();
            if (bufferedOutputStream != null) bufferedOutputStream.close();
            if (inputStream != null) inputStream.close();
            if (outputStream != null) outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
}
