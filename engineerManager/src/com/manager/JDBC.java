package com.manager;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
 
public class JDBC {
 
	public static void main(String[] args){
	try{
		
		Class.forName("com.mysql.jdbc.Driver");//加载MySQL JDBC驱动程序
	    //Class.forName("org.git.mm.mysql.Driver");
	    System.out.println("成功加载Mysql驱动程序!");
	}
	catch(Exception e){
		System.out.println("Mysql驱动加载错误!");
		e.printStackTrace();
	}
	try{
		Connection connect = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/engineermanager","root","w1010");
		//连接URL为:   jdbc:mysql//服务器地址/数据库名  ，后面的2个参数分别是登陆用户名和密码
 
		System.out.println("成功连接Mysql服务器!");
		Statement stmt = connect.createStatement();
		ResultSet rs = (ResultSet) stmt.executeQuery("select * from login_user");
		                                                   //table_1 为你在MySQL数据库中创建的-表的名称
 
		while(rs.next()){
			System.out.println(rs.getString("user"));        //取MySQL数据库中table_1表中的ID
			System.out.println(rs.getString("password"));   //取MySQL数据库中table_1表中的Summary
		}
	}
	catch(Exception e){
		System.out.println("获取数据错误!");
		e.printStackTrace();
	}
 
	}
 
}
