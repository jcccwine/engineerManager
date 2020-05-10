<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*,java.sql.*,java.text.*"%>
<%  
  request.setCharacterEncoding("UTF-8");  
  response.setCharacterEncoding("UTF-8");  
  response.setContentType("text/html; charset=utf-8");  
%>
<html>
<head>
<title>engineerCalcute</title>
</head>
<body>
<%
	String usernum = request.getParameter("usernum");
  int workday = Integer.parseInt(request.getParameter("workday"));
	String benefit = request.getParameter("benefit");
	double bene = Double.parseDouble(benefit);
	int year = Integer.parseInt(request.getParameter("year"));
	String insurance = request.getParameter("insurance");
	double insur = Double.parseDouble(insurance);
	String result = request.getParameter("result");
	double res = Double.parseDouble(result);
	String sqlCalcu = "select en_salary from engineer where en_num = '"+usernum+"'";

	try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");  	  
	  Statement sql = conn.createStatement();									 
		ResultSet rs = sql.executeQuery(sqlCalcu);
		%>
		<input type="text" name="result" placeholder="yuexinshui" class="form-control">
		<%
		while (rs.next()){
		  res = ((rs.getDouble("en_salary"))+10*workday+bene*year/100.0)*0.9-insur;
		  DecimalFormat df = new DecimalFormat( ".00");		  
		  out.print(df.format(res));
		}
    	  
  }catch(Exception e){
    e.printStackTrace();
    out.print("<script language='JavaScript'>alert('删除失败！请重新操作');window.location.href='engineer_delete_num.jsp'</script>");
  }
	%> 
</body>

</html>









