package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import model.bean.UserBean;

//用户信息存储模型
public class SaveUserMessage {
	
	private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String USER="scott";
	private static final String PASSWORD="dream37326";
	
	public static void main(String[] args){
		
	}
	public SaveUserMessage(){
		
	}
	
	//？？？？？？？？？？？？？？能不能想办法传递一个用户对象集合，减少数据库压力
	public static void addUser(UserBean user){//当用户填写完问卷之后，把该用户的信息填写进入数据库
		//ResultSet resultSet=null;
		PreparedStatement preparedStatement=null;
		Connection connection=null;
		try {
			new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			String sql="insert into users values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,user.getStudentId());
			preparedStatement.setString(2,user.getName());
			preparedStatement.setString(3,user.getSex());
			preparedStatement.setString(4,user.getCollege());
			preparedStatement.setString(5,user.getGrade());
			preparedStatement.setString(6,user.getLove());
			preparedStatement.setString(7,user.getRise());
			preparedStatement.setString(8,user.getAfternoonNap());
			preparedStatement.setString(9,user.getSleep());
			preparedStatement.setString(10,user.getPlayPhone());
			preparedStatement.setString(11,user.getPlayTruant());
			preparedStatement.setString(12,user.getLibrary());
			preparedStatement.setString(13,user.getMajorTaste());
			preparedStatement.setString(14,user.getElseStydy());
			preparedStatement.setString(15,user.getExercise());
			preparedStatement.setString(16,user.getPlayGame());
			preparedStatement.setInt(17,user.getScore());
			preparedStatement.executeUpdate();//插入、更新语句必须手动进行提交，*********当然jdbc可以设置自动提交
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
//				if(resultSet!=null){//后建立连接的先关闭
//					resultSet.close();
//					resultSet=null;
//				}
				if(preparedStatement!=null){
					preparedStatement.close();
					preparedStatement=null;
				}
				if(connection!=null){
					connection.close();
					connection=null;
				}
			} catch (Exception e2) {//*********异常的捕获顺序
				e2.printStackTrace();//********这个方法里面带参数的含义
			}
		}
	}
	
}
