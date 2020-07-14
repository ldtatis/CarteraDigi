/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Code.DbConnect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.ProcesoJuridico;
import static java.lang.System.out;
/**
 *
 * @author Mateo
 */
public class NewProcessServlet extends HttpServlet {

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
            throws ServletException, IOException {
        String causa,tipo,abogado,seguimiento,contacto,correo,direccion,juzgado,ubicacionjuzgado,telefono;
        int factura;
        
        DbConnect db = new DbConnect();
        factura = Integer.parseInt(request.getParameter("factura"));
        causa = request.getParameter("causa");
        tipo = request.getParameter("tipo");
        abogado = request.getParameter("abogado");
        contacto = request.getParameter("contacto");
        telefono = request.getParameter("telefono");
        correo = request.getParameter("correo");
        direccion = request.getParameter("direccion");
        seguimiento = request.getParameter("seguimiento");
        juzgado = request.getParameter("nombrejuzgado");
        ubicacionjuzgado = request.getParameter("ubicacionjuzgado");
        
            ProcesoJuridico p = new ProcesoJuridico();
            
            try {
                String mensaje = p.NewProcesoJuridico(causa, tipo, factura, abogado, contacto, telefono, correo, direccion,juzgado,ubicacionjuzgado); 
                request.getSession().setAttribute("respuesta", "correcto");
                request.getRequestDispatcher("View/ProcesoJuridico/indexpj.jsp").forward(request, response);
            } catch (Exception e) {
                e.getMessage();
            }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
