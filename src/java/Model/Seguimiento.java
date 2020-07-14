package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Seguimiento {
    String StringFecha,StringResultado,StringDescripcion;
    int IntSeguimiento;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
       
    public String Seguimiento( int IntProceso,String StringResultado,String StringDescripcion) throws SQLException{
            try {
            db.DB().executeQuery("INSERT INTO SEGUIMIENTO VALUES('"+IntProceso+"',getdate(),'"+StringResultado+"','"+StringDescripcion+"')"); 
            return "sucess";
        } catch (Exception e) {
            return e.getMessage();
        }
    }  
}
