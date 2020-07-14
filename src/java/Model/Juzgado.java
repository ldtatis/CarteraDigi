package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Juzgado {
    String StringNombre,StringUbicacion;
    int IntIdJuzgado;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private String getStringNombre(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_NOMBRE FROM JUZGADO WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_NOMBRE");
    }
    
    private void setStringNombre(String StringName,String StringNombre,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE JUZGADO SET [NVARCHAR_NOMBRE] = '"+StringNombre+"' WHERE [NVARCHAR_NOMBRE] = '"+StringName+"'");
    }
    
    private String getStringUbicacion(String StringName) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_UBICACION FROM JUZGADO WHERE NVARCHAR_NOMBRE='"+StringName+"'");
        return Resultado.getString("NVARCHAR_UBICACION");
    }

    private void setStringUbicacion(String StringName,String StringUbicacion,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE JUZGADO SET [NVARCHAR_UBICACION] = '"+StringUbicacion+"' WHERE [NVARCHAR_NOMBRE] = '"+StringName+"'");
    }
    
    public void Cliente(String StringNombre,String StringUbicacion,int IntIdJuzgado,boolean Existe) throws SQLException{
        if (Existe) {
            this.setStringUbicacion(StringNombre,StringUbicacion,Existe);
            this.setStringNombre(StringNombre,StringNombre,Existe);
           
        }else{
            db.DB().executeQuery("INSERT INTO JUZGADO VALUES('"+StringNombre+"','"+StringUbicacion+"')");
        }
    }  
}
