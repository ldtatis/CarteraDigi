<%@page import="java.sql.ResultSet"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%@page import="Code.DbConnect" %>
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
DbConnect db = new DbConnect();
int a = 0,b=0,c=0,d=0;
ResultSet Consulta = db.DB().executeQuery("EXEC GestionCarteraDB.dbo.SP_CHART1");
if (Consulta.next()) {
        a = Consulta.getInt("A");
        b = Consulta.getInt("B");
        c = Consulta.getInt("C");
        d = Consulta.getInt("D");
    }

map = new HashMap<Object,Object>(); map.put("label", "Vencida"); map.put("y",a); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Vigente"); map.put("y", c); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Paga"); map.put("y", b); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "No paga"); map.put("y", d); list.add(map);

String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Facturas"
	},
	data: [{
		type: "pie",
		toolTipContent: "<b>{label}</b>: {y}%",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>