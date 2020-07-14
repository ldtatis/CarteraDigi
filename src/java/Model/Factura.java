package Model;
import Code.DbConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Factura {
    String StringDescripcion,StringFechaVencimiento,StringFechaGeneracion,StringEstado,StringTipoCartera;
    int IntIdFactura,IntValorFactura,IntTiempoCulminacion,IntCuotas;
    
    DbConnect db = new DbConnect();
    Statement consulta = db.DB();
    ResultSet Resultado;
    
    private int getIntIdFactura(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_ID_FACTURA FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getInt("INT_ID_FACTURA");
    }
    private String getStringFechaVencimiento(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT DATETIME_FECHA_VENCIMIENTO FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getString("DATETIME_FECHA_VENCIMIENTO");
    }
    private String getStringFechaGeneracion(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT DATETIME_FECHA_GENERACION FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getString("DATETIME_FECHA_GENERACION");
    }
    
    private String getStringDescripcion(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_DESCRIPCION FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getString("NVARCHAR_DESCRIPCION");
    }
    private void setStringDescripcion(int IntId,String StringDescripcion,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE FACTURA SET [NVARCHAR_DESCRIPCION] = '"+StringDescripcion+"' WHERE [INT_ID_FACTURA] = '"+IntId+"'");
    }
    
    private String getStringEstado(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_ESTADO FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getString("NVARCHAR_ESTADO");
    }
    private void setStringEstado(int IntId,String StringEstado,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE FACTURA SET [NVARCHAR_ESTADO] = '"+StringEstado+"' WHERE [INT_ID_FACTURA] = '"+IntId+"'");
    }
    
    private String getStringTipoCartera(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT NVARCHAR_TIPO_CARTERA FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getString("NVARCHAR_TIPO_CARTERA");
    }
    private void setStringTipoCartera(int IntId,String StringTipoCartera,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE FACTURA SET [NVARCHAR_TIPO_CARTERA] = '"+StringTipoCartera+"' WHERE [INT_ID_FACTURA] = '"+IntId+"'");
    }
    
    private int getSIntTiempoCulminacion(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_TIEMPO_CULMINACION FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getInt("INT_TIEMPO_CULMINACION");
    }
    private void setIntTiempoCulminacion(int IntId,int IntTiempoCulminacion,boolean Existe) throws SQLException {
        db.DB().executeQuery("UPDATE FACTURA SET [INT_TIEMPO_CULMINACION] = '"+IntTiempoCulminacion+"' WHERE [INT_ID_FACTURA] = '"+IntId+"'");
    }
    
    private int getSIntValorFactura(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_VALOR_FACTURA FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getInt("INT_VALOR_FACTURA");
    }
//    private void setIntValorFactura(int IntId,int IntValorFactura,boolean Existe) throws SQLException {
//        db.DB().executeQuery("UPDATE FACTURA SET [INT_VALOR_FACTURA] = '"+IntValorFactura+"' WHERE [INT_ID_FACTURA] = '"+IntId+"'");
//    }
    
    private int getIntCuotas(int IntId) throws SQLException {
        Resultado = db.DB().executeQuery("SELECT INT_CUOTAS FROM FACTURA WHERE INT_ID_FACTURA='"+IntId+"'");
        return Resultado.getInt("INT_CUOTAS");
    }
//    private void setIntCuotas(int IntId,int IntCuotas,boolean Existe) throws SQLException {
//        db.DB().executeQuery("UPDATE FACTURA SET [INT_CUOTAS] = '"+IntCuotas+"' WHERE [INT_ID_FACTURA] = '"+IntId+"'");
//    }
    
     public void Factura(int IntIdFactura,int IntValorFactura,int IntTiempoCulminacion,int IntCuotas,String StringDescripcion,String StringFechaVencimiento,String StringFechaGeneracion,String StringEstado,String StringTipoCartera,boolean Existe) throws SQLException{
        if (Existe) {
            this.setIntTiempoCulminacion(IntIdFactura,IntTiempoCulminacion,Existe);
            this.setStringEstado(IntIdFactura,StringEstado,Existe);
            this.setStringTipoCartera(IntIdFactura,StringTipoCartera,Existe);
            this.setStringDescripcion(IntIdFactura,StringDescripcion,Existe);
         
        }else{
            db.DB().executeQuery("INSERT INTO CLIENTE VALUES('"+IntIdFactura+"','"+IntValorFactura+"','"+IntTiempoCulminacion+"','"+IntCuotas+"','"+StringDescripcion+"','"+StringFechaVencimiento+"','"+StringFechaGeneracion+"','"+StringEstado+"','"+StringTipoCartera+"')");
        }
    }  
    
   
    

}
