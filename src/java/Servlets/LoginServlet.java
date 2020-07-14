/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Mateo
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */    
        //metodo encargado de la gestión del método POST
    protected void processRequestPOST(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        HttpSession sesion = request.getSession();
        DbConnect db = new DbConnect();
        String usuario, contrasena;
        ResultSet Resultado;
        usuario = request.getParameter("usuario");
        contrasena = request.getParameter("contrasena");
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_NOMBRE,NVARCHAR_APELLIDO,NVARCHAR_TIPO FROM USUARIO WHERE NVARCHAR_LOGIN='"+usuario+"' and NVARCHAR_CONTRASENA = '"+contrasena+"'");
        System.out.println(Resultado);
        if(Resultado.next() && sesion.getAttribute(usuario) == null){
            //si coincide usuario y password y además no hay sesión iniciada
            sesion.setAttribute("nombre", Resultado.getString("NVARCHAR_NOMBRE") +" "+ Resultado.getString("NVARCHAR_APELLIDO") );
            sesion.setAttribute("tipo", Resultado.getString("NVARCHAR_TIPO"));
            //redirijo a página con información de login exitoso
            response.sendRedirect("View/Home.jsp");
        }else{
            response.sendRedirect("LoginFailed.jsp");
        }
    }
    
   //método encargado de la gestión del método GET
    protected void processRequestGET(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {       
        //me llega la url "proyecto/login/out"
        String action=(request.getPathInfo()!=null?request.getPathInfo():"/out");
        HttpSession sesion = request.getSession();
        if(action.equals("/out")){
            sesion.setAttribute("tipo", null);
            sesion.invalidate();
            response.sendRedirect("index.jsp");
        }else{
           
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
        processRequestGET(request, response);
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
            processRequestPOST(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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