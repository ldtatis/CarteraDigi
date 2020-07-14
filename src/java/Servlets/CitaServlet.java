/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Model.Citas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jojansantia
 */
public class CitaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void GuardarCita(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            Citas c = new Citas();
            int opc = Integer.parseInt(request.getParameter("opc"));
        if (opc == 1) {
            int IdUsuario = Integer.parseInt(request.getParameter("IdUsuario"));
            int IdCliente = Integer.parseInt(request.getParameter("IdCliente"));
            String fecha = request.getParameter("fecha");
            String Descripcion = request.getParameter("Descripcion");
            String Objetivo = request.getParameter("Objetivo");
            String telefono = request.getParameter("telefono");
            String correo = request.getParameter("correo");
            String estadocita = request.getParameter("estadocita");
            
            try {
                String mensaje = c.guardar(IdCliente, IdUsuario, fecha, Descripcion, Objetivo, estadocita, telefono, correo);

                request.getSession().setAttribute("respuesta", "correcto1");
                request.getRequestDispatcher("View/Cita/indexc.jsp").forward(request, response);
            } catch (Exception e) {
                e.getMessage();
            }
        } else if (opc == 2) {
            int IdCita = Integer.parseInt(request.getParameter("IdCita"));
            String estadocita = request.getParameter("estadocita");
            String descripcion = request.getParameter("descripcion");
            try {
                String mensaje = c.modificarEstado(IdCita, estadocita, descripcion);

                request.getSession().setAttribute("respuesta", "correcto2");
                request.getRequestDispatcher("View/Cita/indexc.jsp").forward(request, response);
            } catch (Exception e) {
                e.getMessage();
            }
            
            //response.sendRedirect("http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp");
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
        GuardarCita(request, response);
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
        GuardarCita(request, response);
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
