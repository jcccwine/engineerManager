<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*,java.sql.*"%>
<%  
  request.setCharacterEncoding("UTF-8");  
  response.setCharacterEncoding("UTF-8");  
  response.setContentType("text/html; charset=utf-8");  
%>
<html>
<head>
<title>engineerDelete</title>
</head>
<body>
<%
  String enName = request.getParameter("username");

	try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");  
	  String sqlDelete = "delete from engineer where en_name = '"+enName+"'";
	  
	  PreparedStatement sql;								 
		sql = conn.prepareStatement(sqlDelete);
		sql.executeUpdate();
    out.print("<script language='JavaScript'>alert('删除成功');window.location.href='engineer_delete_num.jsp'</script>");
	  
  }catch(Exception e){
    e.printStackTrace();
    out.print("<script language='JavaScript'>alert('删除失败！请重新操作');window.location.href='engineer_delete_num.jsp'</script>");
  }
	%> 
</body>
</html>