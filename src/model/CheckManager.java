package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import model.bean.ManagerBean;

public class CheckManager {
	private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String USER="scott";
	private static final String PASSWORD="dream37326";
	public static void main(String[] args){
//		ManagerBean manager=new ManagerBean();
//		manager.setName("a");
//		manager.setPassword("aaaaaaa");
//		manager.setOnLineStatus(0);
//		addManager(manager);
//		checkManager(manager);
	}
	public CheckManager(){
	};
	//添加管理员---------这个没有问题，可以实现，后期实现加密存储(直接两次MD5或者其它加密算法嵌套加密)
	public static void addManager(ManagerBean manager){
		ResultSet resultSet=null;
		PreparedStatement preparedStatement=null;
		Connection connection=null;

		try{
			//DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());//*********这些代码重复性比较高，后期封装成方法进行调用
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			//System.out.println("123124153333");
			String sql="insert into manager values(?,?,?)";
			preparedStatement=connection.prepareStatement(sql);//代表三个占位符
			//System.out.println(sql);//打印出sql方便调试
			preparedStatement.setString(1,manager.getName());
			preparedStatement.setString(2,manager.getPassword());
			preparedStatement.setInt(3,manager.getOnLineStatus());
			preparedStatement.executeUpdate();//oracle插入语句必须手动提交
			//System.out.println(manager.getName()+":"+manager.getPassword());
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			try {
				if(resultSet!=null){
					resultSet.close();
					resultSet=null;//让垃圾回收器可以随时回收资源
				}
				if(preparedStatement!=null){
					preparedStatement.close();
					preparedStatement=null;
				}
				if(connection!=null){
					connection.close();
					connection=null;
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	//查找匹配管理员------这里有点问题------后期加密后这里也加密后在匹配查找
	public static boolean checkManager(ManagerBean manager){
		ResultSet resultSet=null;
		Statement statement=null;
		Connection connection=null;
		boolean exist=false;
		try{
			//new oracle.jdbc.driver.OracleDriver();
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			statement=connection.createStatement();
			//resultSetName=statement.executeQuery("select manager.managername from manager where managerName="+manager.getName());
			resultSet=statement.executeQuery("select * from manager");
			while(resultSet.next()){
				if(resultSet.getString(1).equals(manager.getName())==true&&resultSet.getString(2).equals(manager.getPassword())==true){
					exist=true;
					if(exist==true){
						System.out.println("============================成功");
					}
					return exist;
				}
				else{
				}
			}
			System.out.println("============================失败");
			return exist;
//			if(resultSetName.getString(1).equals(manager.getName())==true&&
//					resultSetPassword.getString(2).equals(manager.getPassword())==true){
//				System.out.println(resultSetName.getString(1)+":"+manager.getPassword()+"成功-----------------");
//				return true;
//			}
//			else{
//				return false;
//			}
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		finally{
			try{
				if(resultSet!=null){
					resultSet.close();
					resultSet=null;
				}
				if(statement!=null){
					statement.close();
					statement=null;
				}
				if (connection!=null) {
					connection.close();
					connection=null;
				}
			}
			catch(Exception e2){
				e2.printStackTrace();
			}
		}
	}
}
