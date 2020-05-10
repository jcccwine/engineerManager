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

<title>engineerUpdate</title>
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
					<li><a href="#engineerPrint.jsp"><i class="fa fa-bar-chart-o"></i> 打印工程师资料</a></li>
				</ul>
			</div>
		</nav>
		
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							修改工程师资料
						</h1>
					</div>
				</div>
				<div class="row" style="width: 650px;">
					<div class="col-lg-12">
						<div class="panel panel-default" style="width: 1000px;">
							<div class="panel-body">
								<div class="col-gl-6">
								<%
								request.setCharacterEncoding("UTF-8");
								String enNum = request.getParameter("usernum");
								
								String sqlUpdate = "SELECT * FROM engineermanager.engineer WHERE en_num='"+enNum+"'";
								String num,name,sex,birth,place,enducate,address,tel,workage,salary;

							  try{
								  Class.forName("com.mysql.jdbc.Driver");
									Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");									
									Statement sql = conn.createStatement();									 
									ResultSet rs = sql.executeQuery(sqlUpdate);

									while(rs.next()){
									  num = rs.getString("en_num");
									  name = rs.getString("en_name");
									  sex = rs.getString("en_sex");
									  birth = rs.getString("en_birth");
									  place = rs.getString("en_place");
									  enducate = rs.getString("en_educate");
									  address = rs.getString("en_address");
									  tel = rs.getString("en_tel");
									  workage = rs.getString("en_workage");
									  salary = rs.getString("en_salary");									  
									  %>
									  <form role="form" action="engineerUpdateSave.jsp" method="post" autocomplete="off">
											<div class="form-group">
												<input type="text" name="num" disabled="disabled" value="<%=num %>" class="form-control" >
												<input type="text" name="name" value="<%=name %>" class="form-control">
												<input type="text" name="sex" value="<%=sex %>" class="form-control">
												<input type="text" name="birth" value="<%=birth %>" class="form-control">
												<input type="text" name="place" value="<%=place %>" class="form-control">
												<input type="text" name="educate" value="<%=enducate %>" class="form-control">
												<input type="text" name="address" value="<%=address %>" class="form-control">
												<input type="text" name="tel" value="<%=tel %>" class="form-control">
												<input type="text" name="workage" value="<%=workage %>" class="form-control">
												<input type="text" name="salary" value="<%=salary %>" class="form-control">
												<input type="submit" value="修改" class="btn btn-default" style="margin-top: 20px;width: 80px;">
											</div>
										</form>			
									  
									<% }
									conn.close();
								}catch(SQLException e){
									e.printStackTrace();
								}
								%>	
								</div>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>