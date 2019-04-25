package model.bean;

public class ManagerBean {
	private String name=null;
	private String password=null;
	private int onLineStatus=0;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getOnLineStatus() {
		return onLineStatus;
	}
	public void setOnLineStatus(int onLineStatus) {
		this.onLineStatus = onLineStatus;
	}
	
}
