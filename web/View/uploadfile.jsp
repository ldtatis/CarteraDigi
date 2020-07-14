
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Code.DbConnect" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SUBIENDO ARCHIVO...</title>
    </head>
    <body>
        <%       
            String archivourl = "D:\\Desktop\\PCS\\ProyectoConstruccion\\web\\files";
            
            DiskFileItemFactory factory = new DiskFileItemFactory();
            
            factory.setSizeThreshold(1024);
            
            factory.setRepository(new File(archivourl));
            
            ServletFileUpload upload = new ServletFileUpload(factory);
                      
            try{
                
                List<FileItem> partes = upload.parseRequest(request);
                
                for(FileItem items: partes){
                    File file = new File(archivourl,items.getName());
                    items.write(file);
                }
                out.print("<h2>ARCHIVO CORRECTAMENTE SUBIDO.....</h2>"+"\n\n"+"<a href='index.jsp'>VOVLER AL MENU</a>");

            }catch(Exception e){
                out.print("Exception: "+e.getMessage()+"");
            }                     
        %>

        <%
                try{
                    DbConnect db = new DbConnect();               
                    db.DB().executeQuery("USE [GestionCarteraDB]; EXEC SP_DATA;");
                }catch(Exception e){
                           out.println("Cargo bien");
                          request.getSession().setAttribute("respuesta", "correcto");
                          request.getRequestDispatcher("Registros.jsp").forward(request, response);
                }
        %>
    </body>
</html>
