package model.bean;

import java.sql.Date;

public class AwardeeBean {
	
	private String userName;
	private String PrizeName;
	private Date getPrizeTime;
	
	public static void main(String[] args){
		
	}
	public AwardeeBean(){
		
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPrizeName() {
		return PrizeName;
	}
	public void setPrizeName(String prizeName) {
		PrizeName = prizeName;
	}
	public Date getGetPrizeTime() {
		return getPrizeTime;
	}
	public void setGetPrizeTime(Date getPrizeTime) {
		this.getPrizeTime = getPrizeTime;
	}
	
}
