package org.car.model;

public class LoginModel {
	private String username;
	private String password;
	private String loginType;
	private int user_id;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getLoginType() {
		return loginType;
	}
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String toString() {
		return "["+username+","+password+","+loginType+"]";
	}
	public int hashCode() {
		return username.length()*1000;
	}
	public boolean equals(Object obj) {
		LoginModel m= (LoginModel)obj;
		if(m.username.equals(this.username)&& m.password.equals(this.password)&&m.loginType.equals(this.loginType)) {
			return true;
		}
		else {
			return false;
		}
	}
	
}
