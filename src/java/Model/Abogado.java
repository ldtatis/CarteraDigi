package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Abogado {
    String StringNombre,StringContacto,StringCorreo,StringDireccion;
    int IntIdAbogado,IntTelefono;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private String getStringNombre(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_NOMBRE FROM ABOGADO WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_NOMBRE");
    }
    
    private String getStringContacto(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CONTACTO FROM ABOGADO WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_CONTACTO");
    }
    
    private String getStringCorreo(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CORREO FROM ABOGADO WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_CORREO");
    }
    
    private String getIntTelefono(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_TELEFONO FROM ABOGADO WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("INT_TELEFONO");
    }

    private String getStringDireccion(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_DIRECCION FROM ABOGADO WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_DIRECCION");
    }
       
    public void Abogado(int IntIdProceso,String StringNombre, String StringContacto,int IntTelefono,String StringCorreo, String StringDireccion) throws SQLException{         
        db.DB().executeQuery("INSERT INTO ABOGADO VALUES('"+IntIdProceso+"','"+StringNombre+"','"+StringContacto+"',"+IntTelefono+",'"+StringCorreo+"','"+StringDireccion+"')");       
    }    
    
}
