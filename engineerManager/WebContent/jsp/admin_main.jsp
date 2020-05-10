<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin</title>
<link href="../assets/css/bootstrap.css" rel="stylesheet" />
<link href="../assets/css/font-awesome.css" rel="stylesheet" />
<link href="../assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
<link href="../assets/css/custom-styles.css" rel="stylesheet" />
<link href='http://fonts.useso.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default top-navbar" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="admin_main.html">管理员登录系统</a>
			</div>

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false"> <i
						class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
					</ul></li>
				<!-- /.dropdown -->
			</ul>
			
		</nav>
		<nav class="navbar-default navbar-side" role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a href="admin_main.jsp"><i class="fa fa-dashboard"></i> 添加用户</a></li>
					<li><a href="admin_delete.jsp"><i class="fa fa-desktop"></i> 删除用户</a></li>
					<li><a href="admin_update.jsp"><i class="fa fa-bar-chart-o"></i> 修改用户</a></li>
				</ul>
			</div>
		</nav>
		
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							添加用户 
						</h1>
					</div>
				</div>
				<div class="row" style="width: 650px;">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="col-gl-6">
									<form action="user_add.jsp" method="post" autocomplete="off">
										<div class="form-group">
											<input type="text" name="username" placeholder="请输入用户名" class="form-control">
											<input type="password" name="password" placeholder="请输入密码" class="form-control">
											<input type="text" name="name" placeholder="姓名" class="form-control">
											<input type="text" name="sex" placeholder="性别" class="form-control">
											<input type="submit" value="添加" class="btn btn-default" style="margin-top: 20px;width: 80px;">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="../assets/js/jquery-1.10.2.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/jquery.metisMenu.js"></script>
	<script src="../assets/js/morris/raphael-2.1.0.min.js"></script>
	<script src="../assets/js/morris/morris.js"></script>
	<script src="../assets/js/custom-scripts.js"></script>

	
</body>
</html>