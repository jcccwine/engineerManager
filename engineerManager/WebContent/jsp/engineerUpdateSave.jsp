<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.Name"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../assets/css/bootstrap.css" rel="stylesheet" />
<link href="../assets/css/engineer_delete.css" rel="stylesheet" />
<link href="../assets/css/font-awesome.css" rel="stylesheet" />
<link href="../assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<link href="../assets/css/custom-styles.css" rel="stylesheet" />
<link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

<title>engineerUpdateSave</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String enNum = request.getParameter("num");
	String enName = request.getParameter("name");
	String enSex = request.getParameter("sex");
	String enBirth = request.getParameter("birth");
	String enPlace = request.getParameter("place");
	String enEducate = request.getParameter("educate");
	String enAddress = request.getParameter("address");
	String enTel = request.getParameter("tel");
	String enWorkage = request.getParameter("workage");
	String enSalary = request.getParameter("salary");
	
	if (enName==null||enName.length()==0||enSex==null||enSex.length()==0||enBirth==null||enBirth.length()==0||
	    enPlace==null||enPlace.length()==0||enEducate==null||enEducate.length()==0||
	    enAddress==null||enAddress.length()==0||enTel==null||enTel.length()==0||
	    enWorkage==null||enWorkage.length()==0||enSalary==null||enSalary.length()==0){
	  out.print("<script language='JavaScript'>alert('输入信息不能为空！');window.location.href='engineer_update_num.jsp'</script>");
	  return;
	}
	
	String sqlUpdate = "update engineermanager.engineer set en_name='"+enName+"',en_sex='"+enSex+"',en_birth='"+enBirth+"',en_place='"+enPlace+"',en_educate='"+enEducate+"',en_address='"+enAddress+"',en_tel='"+enTel+"',en_workage='"+enWorkage+"',en_salary='"+enSalary+"' where en_num = '"+enNum+"'";
	
	 try{
	  Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");									
		Statement sql = conn.createStatement();									 
		sql.execute(sqlUpdate);
		conn.close();
	}catch(SQLException e){
		e.printStackTrace();
		out.print("<script language='JavaScript'>alert('修改成功');window.location.href='engineer_update_num.jsp'</script>");
	}
	%>	


</body>
</html>