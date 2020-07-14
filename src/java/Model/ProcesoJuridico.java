package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Model.Abogado;

public class ProcesoJuridico {
    String StringCausa,StringTipoProceso;
    int IntIdProceso;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    Abogado a = new Abogado();
    int prueba = 0;
    private String getStringCausa(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_CAUSA FROM PROCESO_JURIDICO WHERE INT_ID_PROCESO='"+IntId+"'");
        return Resultado.getString("NVARCHAR_CAUSA");
    }
    
    private void setStringCausa(int IntId,String StringCausa) throws SQLException {
        db.DB().executeQuery("UPDATE PROCESO_JURIDICO SET [NVARCHAR_CAUSA] = '"+StringCausa+"' WHERE [INT_ID_PROCESO] = '"+IntId+"'");
    }
    
    private String getStringTipoProceso(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_TIPO_PROCESO FROM PROCESO_JURIDICO WHERE INT_ID_PROCESO='"+IntId+"'");
        return Resultado.getString("NVARCHAR_TIPO_PROCESO");
    }
    
    private void setStringTipoProceso(int IntId,String StringCausa) throws SQLException {
        db.DB().executeQuery("UPDATE PROCESO_JURIDICO SET [NVARCHAR_TIPO_PROCESO] = '"+StringCausa+"' WHERE [INT_ID_PROCESO] = '"+IntId+"'");
    }

    public void ExistProcesoJuridico(int IntIdProceso,String StringCausa,String StringTipoProceso) throws SQLException{
            this.setStringCausa(IntIdProceso,StringCausa);
            this.setStringTipoProceso(IntIdProceso,StringTipoProceso);  
    }
    
    public String NewProcesoJuridico(String StringCausa,String StringTipoProceso,int Idfactura,String Stringnombreabogado,String Stringcontacto,String Inttelefono,String Stringcorreo,String StringDirecion,String Stringjuzgado,String Stringubicacionjuzgado) throws SQLException{
        try {
            db.DB().executeQuery("INSERT INTO PROCESO_JURIDICO VALUES('"+Idfactura+"','"+StringCausa+"','"+StringTipoProceso+"')");
            return "succes";
        } catch (Exception e) {                    
            Resultado = db.DB().executeQuery("SELECT INT_ID_PROCESO FROM PROCESO_JURIDICO WHERE INT_ID_FACTURA='"+Idfactura+"' AND NVARCHAR_CAUSA='"+StringCausa+"' AND NVARCHAR_TIPO_PROCESO='"+StringTipoProceso+"'");
             if (Resultado.next()) {
                 try {                    
                     db.DB().executeQuery("INSERT INTO ABOGADO VALUES('"+Resultado.getInt("INT_ID_PROCESO")+"','"+Stringnombreabogado+"','"+Stringcontacto+"',"+Inttelefono+",'"+Stringcorreo+"','"+StringDirecion+"')");      
                     return "succes";
                 } catch (Exception b) {
                     Resultado = db.DB().executeQuery("SELECT INT_ID_PROCESO FROM PROCESO_JURIDICO WHERE INT_ID_FACTURA='"+Idfactura+"' AND NVARCHAR_CAUSA='"+StringCausa+"' AND NVARCHAR_TIPO_PROCESO='"+StringTipoProceso+"'");         
                     if (Resultado.next()) {
                         try {
                             db.DB().executeQuery("INSERT INTO JUZGADO VALUES("+Resultado.getInt("INT_ID_PROCESO")+",'"+Stringjuzgado+"','"+Stringubicacionjuzgado+"')");
                             return "succes";
                         } catch (Exception c) {
                             c.getMessage();
                         }
                     }
                    b.getMessage();
                 }
             }
            return e.getMessage();
        }         
    }
   
    
}
