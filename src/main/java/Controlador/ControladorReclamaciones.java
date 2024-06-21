/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;



import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.ReclamacionesDAO;
import modelo.dto.mreclamaciones;



/**
 *
 * @author
 */
@WebServlet(name = "ControladorReclamaciones", urlPatterns = {"/ControladorReclamaciones"})
public class ControladorReclamaciones extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            if (accion.equals("Registrar")) {
                String nombre = request.getParameter("nombre");
                String dni = request.getParameter("dni");
                String correo = request.getParameter("correo");
                String fecha = request.getParameter("fecha");
                String descripcion = request.getParameter("descripcion");
                String mensaje = "";
                
                request.setAttribute("nombre", nombre);
                request.setAttribute("dni", "" + dni);
                request.setAttribute("correo", "" + correo);
                request.setAttribute("fecha", "" + fecha);
                request.setAttribute("descripcion", descripcion);

                // Creación de la instancia de la reclamación
                mreclamaciones m = new mreclamaciones();
                m.setNombrerec(nombre);
                m.setDnirec(dni);
                m.setCorreorec(correo);
                m.setFecharec(fecha);
                m.setDesripcionrec(descripcion);

                // Insertar reclamación en la base de datos
                ReclamacionesDAO reclamacionesDAO = new ReclamacionesDAO();
                String resp = reclamacionesDAO.insertUpdate(m);
                request.getRequestDispatcher("./vista/libroReclamaciones.jsp").forward(request, response);
            
                request.setAttribute("mensaje", mensaje);
                request.getRequestDispatcher("./vista/libroReclamaciones.jsp").forward(request, response);

            } else if (accion.equals("principal")) {
                request.getRequestDispatcher("./vista/libroReclamaciones.jsp").forward(request, response);
            } 
        }
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorReclamaciones.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorReclamaciones.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Controlador para gestionar las reclamaciones.";
    }
}

