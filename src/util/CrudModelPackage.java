package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CrudModelPackage {
	
	private static String URL="jdbc:mysql://localhost:3306/test";
	private static String NAME="root";
	private static String PASSWORD="dream37326";
	
	private static Connection connect=null;
	private static Statement statement=null;
	private static PreparedStatement preparedStatement=null;
	private static ResultSet resultSet=null;
	 
	//返回连接对象
	public static Connection getConnection(){
		try {
			return DriverManager.getConnection(URL,NAME,PASSWORD);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	
	//释放自定资源，并且通知让垃圾回收机制及时回收
	public static void releaseConnect(){
		try {
			if(connect!=null){
				connect.close();
				connect=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void releaseStatement(){
		try {
			if(statement!=null){
				statement.close();
				statement=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void releasepreParedStatement(){
		try {
			if(preparedStatement!=null){
				preparedStatement.close();
				preparedStatement=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void releaseResultSet(){
		try {
			if(resultSet!=null){
				resultSet.close();
				resultSet=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
