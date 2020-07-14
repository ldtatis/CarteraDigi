/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Code.DbConnect;
import Model.Usuario;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;
/**
 *
 * @author USER
 */
@WebServlet(name = "RegisterUserServlet", urlPatterns = {"/RegisterUserServlet"})
public class RegisterUserServlet extends HttpServlet {

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
        String nombre,apellido,correo,login,contrasena,tipo,telefono;
        
        DbConnect db = new DbConnect();
        nombre = request.getParameter("TxtNombre");
        apellido = request.getParameter("TxtApellido");
        telefono = request.getParameter("IntTelefono");
        correo = request.getParameter("TxtCorreo");
        login = request.getParameter("TxtLogin");
        contrasena = request.getParameter("TxtContrasena");
        tipo = request.getParameter("TxtTipo");
        
        try{
            Usuario u = new Usuario();
            u.Usuario(login, apellido, contrasena, correo, nombre, tipo, telefono,false);
        }
        catch(SQLException e){           
            request.getSession().setAttribute("respuesta", "correcto");
            request.getRequestDispatcher("View/Usuario/indexcu.jsp").forward(request, response);
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
