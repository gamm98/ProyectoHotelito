/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dto.msugerencia;
import modelo.dao.SugerenciasDAO;
import modelo.dao.TipoSugerenciasDAO;
import modelo.dto.mTipoSugerencia;

/**
 *
 * @author Piero
 */
@WebServlet(name = "ControladorSugerencias", urlPatterns = {"/ControladorSugerencias"})
public class ControladorSugerencias extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        List<mTipoSugerencia> listatiposuge = new TipoSugerenciasDAO().getList();
        String accion = request.getParameter("accion");
        if (accion != null) {
            if (accion.equals("Registrar")) {
                String codigo = request.getParameter("codigo");
                String nombre = request.getParameter("nombre");
                String correo = request.getParameter("correo");
                String infosuge = request.getParameter("infosuge");
                // String tiposuge = request.getParameter("tiposuge");
                String tiposuge = request.getParameter("cboSugerencia");
                String mensaje = "";

                request.setAttribute("codigo", codigo);
                request.setAttribute("nombre", nombre);
                request.setAttribute("correo",  correo);
                request.setAttribute("infosuge",  infosuge);
                request.setAttribute("tiposuge",  tiposuge);
                request.setAttribute("listatiposuge", listatiposuge);

                if (codigo.equals("")) {
                    codigo = "0";
                }

                msugerencia m = new msugerencia();
                m.setIdsugerencia(Integer.parseInt(codigo));
                m.setNombresuge(nombre);
                m.setCorreosuge(correo);
                m.setInfosuge(infosuge);
                m.setMtiposugerencia(new mTipoSugerencia(Integer.parseInt(tiposuge)));
                String resp = new SugerenciasDAO().insertUpdate(m);
                request.getRequestDispatcher("./vista/formularioSugerencia.jsp").forward(request, response);

            } else if (accion.equals("principal")) {
                listatiposuge = new TipoSugerenciasDAO().getList();
                request.setAttribute("listatiposuge", listatiposuge);
                request.getRequestDispatcher("./vista/formularioSugerencia.jsp").forward(request, response);
            } else if (accion.equals("edit")) {
                Integer idx = Integer.valueOf(request.getParameter("id"));
                msugerencia m = new SugerenciasDAO().get(idx);

                request.setAttribute("codigo", "" + m.getIdsugerencia());
                request.setAttribute("nombre", m.getNombresuge());
                request.setAttribute("correo", "" + m.getCorreosuge());
                request.setAttribute("infosuge", "" + m.getInfosuge());
                request.setAttribute("tiposuge", "" + m.getMtiposugerencia().getIdtiposuge());
                request.setAttribute("listatiposuge", listatiposuge);

                request.getRequestDispatcher("./vista/formularioSugerencia.jsp").forward(request, response);
            } else if (accion.equals("delete")) {
                Integer idx = Integer.parseInt(request.getParameter("id"));
                String resp = new SugerenciasDAO().delete(idx);

                request.setAttribute("mensaje", resp);
                if (resp.trim().isEmpty()) {
                    request.setAttribute("mensaje", "Borrado ok");
                    request.setAttribute("result", "info");
                } else {
                    request.setAttribute("result", "error");
                }
                request.getRequestDispatcher("./vista/formularioSugerencia.jsp").forward(request, response);
            }
        }
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorSugerencias.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorSugerencias.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
