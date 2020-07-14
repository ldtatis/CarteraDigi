package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Cliente {
    String StringNombre,StringTipo,StringTipoEntidad,StringCorreo;
    int IntTelefono;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private String getStringNombre(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_NOMBRE FROM CLIENTE WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_NOMBRE");
    }
    
    private void setStringNombre(String StringName,String StringNombre,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CLIENTE SET [NVARCHAR_NOMBRE] = '"+StringNombre+"' WHERE [NVARCHAR_NOMBRE] = '"+StringName+"'");
    }
    
    private String getStringTipo(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_TIPO FROM CLIENTE WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_TIPO");
    }

    private void setStringTipo(String StringName,String StringTipoEntidad,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CLIENTE SET [NVARCHAR_TIPO] = '"+StringTipoEntidad+"' WHERE [NVARCHAR_NOMBRE] = '"+StringName+"'");
    }
    
    private String getStringTipoEntidad(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_TIPOENTIDAD FROM CLIENTE WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_TIPOENTIDAD");
    }

    private void setStringTipoEntidad(String StringName,String StringTipoEntidad,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CLIENTE SET [NVARCHAR_TIPOENTIDAD] = '"+StringTipoEntidad+"' WHERE [NVARCHAR_NOMBRE] = '"+StringName+"'");
    }
    
    private String getStringCorreo(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CORREO FROM CLIENTE WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_CORREO");
    }

    private void setStringCorreo(String StringName,String StringCorreo,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CLIENTE SET [NVARCHAR_CORREO] = '"+StringCorreo+"' WHERE [NVARCHAR_NOMBRE] = '"+StringName+"'");
    }
    
    private String getIntTelefono(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_TELEFONO FROM CLIENTE WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("INT_TELEFONO");
    }

    private void setIntTelefono(String StringName,int IntTelefono,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CLIENTE SET [INT_TELEFONO] = '"+IntTelefono+"' WHERE [NVARCHAR_NOMBRE] = '"+StringName+"'");
    }
    
    
    public void Cliente(String StringNombre,String StringTipo,String StringTipoEntidad,String StringCorreo,int IntTelefono,boolean Existe) throws SQLException{
        if (Existe) {
            this.setIntTelefono(StringNombre,IntTelefono,Existe);
            this.setStringTipo(StringNombre,StringTipo,Existe);
            this.setStringTipoEntidad(StringNombre,StringTipoEntidad,Existe);
            this.setStringCorreo(StringNombre,StringCorreo,Existe);
            this.setStringNombre(StringNombre,StringNombre,Existe);
           
        }else{
            db.DB().executeQuery("INSERT INTO CLIENTE VALUES('"+StringNombre+"','"+StringTipo+"','"+StringTipoEntidad+"','"+StringCorreo+"',"+IntTelefono+")");
        }
    }    
    

    
   
    
    
    
    
}
