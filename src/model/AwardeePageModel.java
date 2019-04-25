package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.bean.AwardeeBean;

public class AwardeePageModel {
	
	private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String USER="scott";
	private static final String PASSWORD="dream37326";
	
	public static void main(String[] args){
		//List<AwardeeBean> list=new ArrayList<>();
		//list=getPageRegion(5,10);
	}
	public AwardeePageModel(){
		
	}
	
	//返回Awardee列表总共条数
	public static int getAwardeeCount(){
		ResultSet resultSet=null;
		PreparedStatement preparedStatement=null;
		Connection connection=null;
		int rowCount;
		
		try {
			new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			preparedStatement=connection.prepareStatement("select count(*) from AWARDEE");
			resultSet=preparedStatement.executeQuery();
			resultSet.next();
			rowCount=resultSet.getInt(1);
			return rowCount;
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
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
		return 0;
	}
	
	//返回一个指定页面区间的所有条数的集合
	public static List<AwardeeBean> getPageRegion(int fromCount,int toCount){
		List<AwardeeBean> list=new ArrayList<>();
		ResultSet resultSet=null;
		PreparedStatement preparedStatement=null;
		Connection connection=null;
		try {
			new oracle.jdbc.driver.OracleDriver();
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
			String sql="SELECT * FROM (SELECT a.*, ROWNUM rn FROM (SELECT * FROM AWARDEE) a WHERE ROWNUM <= "+toCount+") WHERE rn >= "+(fromCount);
			preparedStatement=connection.prepareStatement(sql);
			resultSet=preparedStatement.executeQuery();
			while (resultSet.next()) {
				//out.println(sql);
				//out.println(resultSetTwo.getDate(3));
				AwardeeBean awardeeBean=new AwardeeBean();
				awardeeBean.setUserName(resultSet.getString(1));
				awardeeBean.setPrizeName(resultSet.getString(2));
				awardeeBean.setGetPrizeTime(resultSet.getDate(3));
				list.add(awardeeBean);
			}
//			for(int i=0;i<list.size();i++)
//            {  
//            	AwardeeBean awardeeBean=(AwardeeBean)list.get(i);  
//                System.out.println(awardeeBean.getUserName()+"-"+awardeeBean.getPrizeName()+"-"+awardeeBean.getGetPrizeTime());
//            } 
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
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
		return null;
	}
}
