<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user</title>
<link href="../assets/css/bootstrap.css" rel="stylesheet" />
<link href="../assets/css/engineer_delete.css" rel="stylesheet" />
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
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="tabnav">
									<span class="fou">编号<label></label></span>
									<span><a href="engineer_search_name.jsp" style="color: black;text-decoration: none;">姓名</a></span>
								</div>
								<div>
									<form action="engineerSearchNum.jsp" method="post" autocomplete="off">
										<div class="form-group">
											<input type="text" name="usernum" placeholder="请输入工程师编号" class="form-control" style="margin-left: 0px;">
											<input type="submit" value="查询" class="btn btn-default" style="margin-top: 20px;width: 80px;">
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