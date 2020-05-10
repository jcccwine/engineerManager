<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*,java.sql.*"%>
<%  
  request.setCharacterEncoding("UTF-8");  
  response.setCharacterEncoding("UTF-8");  
  response.setContentType("text/html; charset=utf-8");  
%>
<html>
<head>
<title>engineerAdd</title>
</head>
<body>
<%
  //获取上一个页面传递过来的数据
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
	
	
	if (enNum==null||enNum.length()==0||enName==null||enName.length()==0||
	    enSex==null||enSex.length()==0||enBirth==null||enBirth.length()==0||
	    enPlace==null||enPlace.length()==0||enEducate==null||enEducate.length()==0||
	    enAddress==null||enAddress.length()==0||enTel==null||enTel.length()==0||
	    enWorkage==null||enWorkage.length()==0||enSalary==null||enSalary.length()==0){
	  out.print("<script language='JavaScript'>alert('输入信息不能为空！');window.location.href='engineer_main.jsp'</script>");
	  return;
	}

	try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");
	  PreparedStatement sql;
	  
	  String condition1 = "insert into engineer(en_num,en_name,en_sex,en_birth,en_place,en_educate,en_address,en_tel,en_workage,en_salary) values(?,?,?,?,?,?,?,?,?,?);";
	  sql = conn.prepareStatement(condition1);
	  sql.setString(1,enNum);//设置第1个统配符“？”代表的具体值
	  sql.setString(2,enName);  
    sql.setString(3,enSex);
    sql.setString(4,enBirth);
    sql.setString(5,enPlace);
    sql.setString(6,enEducate);
    sql.setString(7,enAddress);
    sql.setString(8,enTel);
    sql.setString(9,enWorkage);
    sql.setString(10,enSalary);
    sql.executeUpdate();
    out.print("<script language='JavaScript'>alert('添加成功');window.location.href='engineer_main.jsp'</script>");
	  
  }catch(Exception e){
    e.printStackTrace();
    out.print("<script language='JavaScript'>alert('添加失败！请重新操作');window.location.href='engineer_main.jsp'</script>");
  }
	%> 
</body>
</html>