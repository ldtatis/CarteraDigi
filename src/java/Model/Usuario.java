package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author USER
 */
public class Usuario {
    String StringNombre,StringApellido,StringTipo,StringLogin,StringContrasena,StringCorreo;
    int IntTelefono;  
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private String getStringNombre(String StringLogin) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_NOMBRE FROM USUARIO WHERE NVARCHAR_LOGIN='"+StringLogin+"'");
        return Resultado.getString("NVARCHAR_NOMBRE");
    }

    private void setStringNombre(String StringLogin,String StringNombre,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE USUARIO SET [NVARCHAR_NOMBRE] = '"+StringNombre+"' WHERE [NVARCHAR_LOGIN] = '"+StringLogin+"'");
    }

    private String getStringApellido(String StringLogin) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_APELLIDO FROM USUARIO WHERE NVARCHAR_LOGIN='"+StringLogin+"'");
        return Resultado.getString("NVARCHAR_APELLIDO");
    }

    private void setStringApellido(String StringLogin, String StringApellido,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE USUARIO SET [NVARCHAR_APELLIDO] = '"+StringApellido+"' WHERE [NVARCHAR_LOGIN] = '"+StringLogin+"'");
    }

    private String getStringTipo(String StringLogin) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_TIPO FROM USUARIO WHERE NVARCHAR_LOGIN='"+StringLogin+"'");
        return Resultado.getString("NVARCHAR_TIPO");
    }

    private void setStringTipo(String StringLogin,String StringTipo,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE USUARIO SET [NVARCHAR_TIPO] = '"+StringTipo+"' WHERE [NVARCHAR_LOGIN] = '"+StringLogin+"'");
    }

    private String getStringContrasena(String StringLogin) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CONTRASENA FROM USUARIO WHERE NVARCHAR_LOGIN='"+StringLogin+"'");
        return Resultado.getString("NVARCHAR_CONTRASENA");
    }

    private void setStringContrasena(String StringLogin,String StringContrasena,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE USUARIO SET [NVARCHAR_CONTRASENA] = '"+StringContrasena+"' WHERE [NVARCHAR_LOGIN] = '"+StringLogin+"'");
    }

    private String getStringCorreo(String StringLogin) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CORREO FROM USUARIO WHERE NVARCHAR_LOGIN='"+StringLogin+"'");
        return Resultado.getString("NVARCHAR_CORREO");
    }

    private void setStringCorreo(String StringLogin,String StringCorreo,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE USUARIO SET [NVARCHAR_CORREO] = '"+StringCorreo+"' WHERE [NVARCHAR_LOGIN] = '"+StringLogin+"'");
    }

    private int getIntTelefono(String StringLogin) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_TELEFONO FROM USUARIO WHERE NVARCHAR_LOGIN='"+StringLogin+"'");
        return Resultado.getInt("INT_TELEFONO");
    }

    private void setIntTelefono(String StringLogin,String IntTelefono,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE USUARIO SET [INT_TELEFONO] = "+IntTelefono+" WHERE [NVARCHAR_LOGIN] = '"+StringLogin+"'");
    }
    
    public void Usuario(String StringLogin,String StringApellido,String StringContrasena,String StringCorreo,String StringNombre,String StringTipo,String IntTelefono,boolean Existe) throws SQLException{
        if (Existe) {
            this.setIntTelefono(StringLogin,IntTelefono,Existe);
            this.setStringApellido(StringLogin,StringApellido,Existe);
            this.setStringContrasena(StringLogin,StringContrasena,Existe);
            this.setStringCorreo(StringLogin,StringCorreo,Existe);
            this.setStringNombre(StringLogin,StringNombre,Existe);
            this.setStringTipo(StringLogin,StringTipo,Existe);
        }else{
            db.DB().executeQuery("INSERT INTO USUARIO VALUES('"+StringNombre+"','"+StringApellido+"','"+StringTipo+"','"+StringLogin+"','"+StringContrasena+"','"+StringCorreo+"',"+IntTelefono+")");
        }
    }
}
