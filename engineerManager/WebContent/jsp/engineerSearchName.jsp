<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.Name"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<style>
	table {
		width: 90%;
		background: #ccc;
		margin: 10px auto;
		border-collapse: collapse;
	}				
	th,td {
		white-space: nowrap;
    padding: 3px 10px 3px 10px;
		height: 25px;
		line-height: 25px;
		text-align: center;
		border: 1px solid #ccc;
	}		
	th {
		background: #eee;
		font-weight: normal;
	}		
	tr {
		background: #fff;
	}		
	tr:hover {
		
	}		
	td a {
		color: #06f;
		text-decoration: none;
	}		
	td a:hover {
		color:#06f;
		text-decoration: underline;
	}
</style>

<title>Search</title>
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="admin_main.html">人事部登录系统</a>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			
		</nav>
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a href="engineer_main.jsp"><i class="fa fa-dashboard"></i> 添加工程师资料</a></li>
					<li><a href="engineer_delete_num.jsp"><i class="fa fa-desktop"></i> 删除工程师资料</a></li>
					<li><a href="engineer_update_num.jsp"><i class="fa fa-bar-chart-o"></i> 修改工程师资料</a></li>
					<li><a href="engineer_search_num.jsp"><i class="fa fa-bar-chart-o"></i> 查询工程师资料</a></li>
					<li><a href="engineer_calcu.jsp"><i class="fa fa-bar-chart-o"></i> 计算工程师薪水</a></li>
					<li><a href="#"><i class="fa fa-bar-chart-o"></i> 对工程师资料排序</a></li>
					<li><a href="#"><i class="fa fa-bar-chart-o"></i> 清空所有工程师资料</a></li>
					<li><a href="engineerPrint.jsp"><i class="fa fa-bar-chart-o"></i> 打印工程师资料</a></li>
				</ul>
			</div>
		</nav>
		
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							查询指定工程师资料
						</h1>
					</div>
				</div>
				<div class="row" style="width: 650px;">
					<div class="col-lg-12">
						<div class="panel panel-default" style="width: 1000px;">
							<div class="panel-body" style="padding-left: 10px;">
								<%
								request.setCharacterEncoding("UTF-8");	
								String enName = request.getParameter("username");
								String sqlQuery2 = "SELECT * FROM engineermanager.engineer WHERE en_name like '%"+enName+"%'";

							  try{
								  Class.forName("com.mysql.jdbc.Driver");
									Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");
									Statement sql = conn.createStatement();									 
									ResultSet rs = sql.executeQuery(sqlQuery2);
								%>						
								<table>
									<tr>
										<th>编号</th>
										<th>姓名</th>
										<th>性别</th>
										<th>生日</th>
										<th>籍贯</th>
										<th>学历</th>
										<th>地址</th>
										<th>电话</th>
										<th>工龄</th>
										<th>基本薪水</th>
									</tr>								
									<%
									if(rs.next()){
									  out.print("<tr>");
									  	out.print("<td>"+rs.getString("en_num")+"</td>");
									  	out.print("<td>"+rs.getString("en_name")+"</td>");
									  	out.print("<td>"+rs.getString("en_sex")+"</td>");
									  	out.print("<td>"+rs.getString("en_birth")+"</td>");
									  	out.print("<td>"+rs.getString("en_place")+"</td>");
									  	out.print("<td>"+rs.getString("en_educate")+"</td>");
									  	out.print("<td>"+rs.getString("en_address")+"</td>");
									  	out.print("<td>"+rs.getString("en_tel")+"</td>");
									  	out.print("<td>"+rs.getString("en_workage")+"</td>");
									  	out.print("<td>"+rs.getString("en_salary")+"</td>");
									  out.print("</tr>");
									}else{
										out.print("<script language='JavaScript'>alert('请输入正确姓名');window.location.href='engineer_search_num.jsp'</script>");
									}
									conn.close();
								}catch(SQLException e){
									e.printStackTrace();
								}																	
								%>							
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>