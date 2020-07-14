/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Code;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USER
 */
public class DbConnect {
    
    public Statement DB(){
        Connection mycon;
        Statement stat = null;
        ResultSet rs;
        
// MVALENCIA ES MI INSTANCIA DE SQL 
        String url = "jdbc:sqlserver://DESKTOP-9AVABA6\\LOCALHOST:1433;databaseName=GestionCarteraDB";
        try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                mycon = DriverManager.getConnection(url,"sa","root");
                 stat = mycon.createStatement();
        }catch (ClassNotFoundException | SQLException ex) {
           Logger.getLogger(DbConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stat;
    }
    
}
