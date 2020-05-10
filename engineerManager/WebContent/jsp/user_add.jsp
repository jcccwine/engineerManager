<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*,java.sql.*"%>
<%  
  request.setCharacterEncoding("UTF-8");  
  response.setCharacterEncoding("UTF-8");  
  response.setContentType("text/html; charset=utf-8");  
%>
<html>
<head>
<title>user_Add</title>
</head>
<body>
<%
  //获取上一个页面传递过来的数据
  String username = request.getParameter("username");
	String psw = request.getParameter("password");
	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	
	if (username==null||username.length()==0||psw==null||psw.length()==0||
	    name==null||name.length()==0||sex==null||name.length()==0){
	  out.print("<script language='JavaScript'>alert('添加消息不能为空！');window.location.href='../jsp/admin_main.jsp'</script>");
	  response.sendRedirect("../jsp/admin_main.jsp");
	  return;
	}

	try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");
	  PreparedStatement sql;
	  
	  String condition = "insert into login_user(username,password,name,sex) values(?,?,?,?);";
	  sql = conn.prepareStatement(condition);
	  sql.setString(1,username);//设置第1个统配符“？”代表的具体值
	  sql.setString(2,psw);  
    sql.setString(3,name);
    sql.setString(4,sex);
    sql.executeUpdate();
    out.print("<script language='JavaScript'>alert('添加成功');window.location.href='admin_main.jsp'</script>");
	  
  }catch(Exception e){
    e.printStackTrace();
    out.print("<script language='JavaScript'>alert('添加用户失败！请重新操作');window.location.href='admin_main.jsp'</script>");
  }
	%> 
</body>
</html>