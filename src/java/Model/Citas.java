package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Citas {
    String StringFecha,StringDescripcion,StringObjetivo,StringResultado,StringCorreo;
    int IntIdCitas,IntTelefono, IntIdUsuario,IntIdCliente;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private String getStringFecha(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT DATETIME_FECHA FROM CITAS WHERE INT_ID_CITAS='"+IntId+"'");
        return Resultado.getString("DATETIME_FECHA");
    }
    
//    private void setStringFecha(int IntId,String StringFecha,boolean Existe) throws SQLException {
//        db.DB().executeQuery("UPDATE PROCESO_JURIDICO SET [NVARCHAR_CAUSA] = '"+StringFecha+"' WHERE [INT_ID_PROCESO] = '"+IntId+"'");
//    }
    
    private String getStringDescripcion(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_DESCRIPCION FROM CITAS WHERE INT_ID_CITA='"+IntId+"'");
        return Resultado.getString("NVARCHAR_DESCRIPCION");
    }
    
    private void setStringDescripcion(int IntId,String StringDescripcion,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CITAS SET [NVARCHAR_DESCRIPCION] = '"+StringDescripcion+"' WHERE [INT_ID_CITA] = '"+IntId+"'");
    }//
    
    private String getStringObjetivo(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_OBJETIVO FROM CITAS WHERE INT_ID_CITA='"+IntId+"'");
        return Resultado.getString("NVARCHAR_OBJETIVO");
    }
    
    private void setStringObjetivo(int IntId,String StringObjetivo,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CITAS SET [NVARCHAR_OBJETIVO] = '"+StringObjetivo+"' WHERE [INT_ID_CITA] = '"+IntId+"'");
    }//
    
    private String getStringResultado(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_RESULTADO FROM CITAS WHERE INT_ID_CITA='"+IntId+"'");
        return Resultado.getString("NVARCHAR_RESULTADO");
    }
    
    private void setStringResultado(int IntId,String StringResultado,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CITAS SET [NVARCHAR_RESULTADO] = '"+StringResultado+"' WHERE [INT_ID_CITA] = '"+IntId+"'");
    }//
    
    private String getStringCorreo(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CORREO FROM CITAS WHERE INT_ID_CITA='"+IntId+"'");
        return Resultado.getString("NVARCHAR_CORREO");
    }

    private void setStringCorreo(int IntId,String StringCorreo,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CITAS SET [NVARCHAR_CORREO] = '"+StringCorreo+"' WHERE [INT_ID_CITA] = '"+IntId+"'");
    }

    private int getIntTelefono(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_TELEFONO FROM CITAS WHERE INT_ID_CITA='"+IntId+"'");
        return Resultado.getInt("INT_TELEFONO");
    }

    private void setIntTelefono(int IntId,int IntTelefono,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE CITAS SET [INT_TELEFONO] = "+IntTelefono+" WHERE [INT_ID_CITA] = '"+IntId+"'");
    }

    public void Citas(int IntIdCitas,String StringFecha,String StringDescripcion,String StringObjetivo,String StringResultado,String StringCorreo,int IntTelefono,boolean Existe) throws SQLException{
        if (Existe) {
           // this.setStringFecha(IntIdCitas,StringFecha,Existe);
            this.setStringDescripcion(IntIdCitas,StringDescripcion,Existe);
            this.setStringObjetivo(IntIdCitas,StringObjetivo,Existe);
            this.setStringResultado(IntIdCitas,StringResultado,Existe);
            this.setIntTelefono(IntIdCitas,IntTelefono,Existe);
            this.setStringCorreo(IntIdCitas,StringCorreo,Existe);
            
            
        }else{
            db.DB().executeQuery("INSERT INTO CITAS VALUES('"+StringDescripcion+"','"+StringObjetivo+"','"+StringResultado+"','"+StringCorreo+"','"+IntTelefono+"')");
        }
    }
    
    public String guardar(int IdCliente,int IdUsuario,String fecha,String Descripcion,String Objetivo,String estadocita,String telefono,String correo) throws SQLException{
          try {  
        db.DB().executeQuery("INSERT INTO CITAS VALUES('"+IdCliente+"','"+IdUsuario+"','"+fecha+"','"+Descripcion+"','"+Objetivo+"','"+estadocita+"','"+telefono+"','"+correo+"')");
          return "succes";
          }  catch (Exception e) { 
              
              return e.getMessage();
    }
    }
    
    public String modificarEstado(int intCita, String estado, String descripcion) throws SQLException{
        try {    
        db.DB().executeQuery("UPDATE CITAS SET NVARCHAR_RESULTADO = '"+estado+"', NVARCHAR_DESCRIPCION = '"+descripcion+"' WHERE INT_ID_CITAS ='"+intCita+"'");
            return "succes";
        }catch (Exception e) { 
              return e.getMessage();
    }
    }
    
}
