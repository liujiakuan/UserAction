package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class PrizeModel {
	private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String USER="scott";
	private static final String PASSWORD="dream37326";
	public static void main(String[] args){
		//setPrizeCount();
		//System.out.println(getPrizeCount());
	}
	public PrizeModel(){
		
	}
	public static int getPrizeCount(){//返回当前奖品数量的总数
		ResultSet resultSet=null;
		Statement statement=null;
		Connection connection=null;
		try {
			new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			String sql="select * from prizelist";//返回当前奖品总数
			statement=connection.createStatement();
			resultSet=statement.executeQuery(sql);
			resultSet.next();
			//System.out.println("当前奖品的总的条为："+resultSet.getInt(1));
			return resultSet.getInt(2);
		} catch (Exception e) {
			System.out.println("查询结果出错----------------------------------------------");
			e.printStackTrace();
		}
		finally {
			try {
				if(resultSet!=null){
					resultSet.close();
					resultSet=null;
				}
				if(statement!=null){
					statement.close();
					statement=null;
				}
				if(connection!=null){
					connection.close();
					connection=null;
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}
	
	public static void setPrizeCount(){//设置用户领取奖品之后奖品的数量---在void/static前面加上 synchronized锁住方法
		//原本以为这里在获取奖品资源的时候回出现事务问题打算用上面的方法来使线程同步访问
		//结果不需要用上面的方法来保证 线程同步：servlet默认是单线程访问，表示同一个时刻只能有一个线程访问它的service方法
		ResultSet resultSet=null;
		Statement statement=null;
		PreparedStatement preparedStatement=null;
		Connection connection=null;
		try {
			new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
					statement=connection.createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,//结果集随便滚动，对滚动不敏感
					//ResultSet.CONCUR_READ_ONLY//设置结果集为只读
					ResultSet.CONCUR_UPDATABLE
					);
			resultSet=statement.executeQuery("select prizename,prizecount from prizelist");
			resultSet.next();
				if(resultSet.getInt(2)!=0){
					int number=resultSet.getInt(2);
					number-=1;
					String sql = "update prizelist set PRIZENAME=?,PRIZECOUNT=? where PRIZECOUNT=?"; 
					preparedStatement=connection.prepareStatement(sql); 
					preparedStatement.setString(1,"yellowBean"); 
					preparedStatement.setInt(2,number); 
					preparedStatement.setInt(3,(number+1)); 
					preparedStatement.executeUpdate();
//						System.out.println(resultSet.getInt(2)+":::::::"+number);
//						resultSet.moveToInsertRow();//专门有一行叫做InsertRow，大多数时候是最后一行，可以在这里插入一个新行
//						resultSet.absolute(1);//定位要删除的行  
//						resultSet.deleteRow();//将删除发送到数据库  
//						resultSet.refreshRow();//刷新当前行
//						resultSet.moveToInsertRow();
//						resultSet.updateString("PRIZENAME","yellowBean");
//						resultSet.updateInt("PRIZECOUNT",number);//总得奖品数量减1
//						System.out.println(resultSet.getInt(2)+":::::::"+number);
//						resultSet.absolute(1);
//						resultSet.insertRow();//将上面的行插入到数据库里面
//						return;
				}
				else{
					//当奖品数量等于0的时候
					//System.out.println("11111："+resultSet.getInt(1));
					//return;
				}
		} catch (Exception e) {
			System.out.println("查询结果出错");
			e.printStackTrace();
		}
		finally {
			try {
				if(resultSet!=null){
					resultSet.close();
					resultSet=null;
				}
				if(statement!=null){
					statement.close();
					statement=null;
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
	
	public static String getPrize(){//领取一个奖品，得到一个奖品的名字
		ResultSet resultSet=null;
		Statement statement=null;
		Connection connection=null;
		try {
			new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			String sql="select * from prizelist";//返回当前奖品总数
			statement=connection.createStatement();
			resultSet=statement.executeQuery(sql);
			resultSet.next();
			return resultSet.getString(1);//返回奖品的名称
		} catch (Exception e) {
			System.out.println("查询结果出错----------------------------------------------");
			e.printStackTrace();
		}
		finally {
			try {
				if(resultSet!=null){
					resultSet.close();
					resultSet=null;
				}
				if(statement!=null){
					statement.close();
					statement=null;
				}
				if(connection!=null){
					connection.close();
					connection=null;
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return null;
	}
	
	public static void saveToAwardee(String userName,String prizeName){//向领取列表里面添加一条领取信息：领取人、领到的奖品名称、领取时间
		ResultSet resultSet=null;
		PreparedStatement preparedStatement=null;
		Connection connection=null;
		try {
			new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			String sql="insert into awardee values(?,?,?)";//返回当前奖品总数
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,userName);//插入名字
			preparedStatement.setString(2,prizeName);//插入奖品名称
			java.util.Date utilDate = new java.util.Date();
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());//当前时间
			preparedStatement.setDate(3, sqlDate);//设置领取时间为当前时间
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			System.out.println("查询结果出错----------------------------------------------");
			e.printStackTrace();
		}
		finally {
			try {
				if(resultSet!=null){
					resultSet.close();
					resultSet=null;
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
	
	//数据库分页查询出领取到了奖品的人的列表
//	public static void showAwardee(){
//		ResultSet resultSet=null;
//		PreparedStatement preparedStatement=null;
//		Connection connection=null;
//		//定义分页所需要的变量
//		int pageNow=0;//当前页
//		int pageSize=0;//指定每页显示多少条数据
//		int pageCount=0;//共多少页，计算得出
//		int rowCount=0;//表示共有多少条数据，数据库查询的出
//		try{
//			new oracle.jdbc.driver.OracleDriver();
//			connection=DriverManager.getConnection(URL,USER,PASSWORD);
//			String sql="select * from (select t.*, rownum rn from (select * from AWARDEE order by GETTIME) t where rowunm <="+pageSize*pageNow+") where rn>="+(pageSize*(pageNow-1)+1);
//			preparedStatement=connection.prepareStatement(sql);
//			
//			//preparedStatement.setString(1,userName);
//			//preparedStatement.executeUpdate();
//		}
//		catch(Exception e){
//			e.printStackTrace();
//		}
//		finally{
//			try {
//				if(resultSet!=null){
//					resultSet.close();
//					resultSet=null;
//				}
//				if(preparedStatement!=null){
//					preparedStatement.close();
//					preparedStatement=null;
//				}
//				if(connection!=null){
//					connection.close();
//					connection=null;
//				}
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//	}
}
