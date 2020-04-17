package com.school.HotelSystem.system.model;

public class ShrioUser {
    private String id;

	private String usercode;

	private String usercard;

	private String username;

	private String password;

	private String sex;

	private String tell;

	private Integer age;

	private String locked;
	
	private RoleInfo roleInfo;
	
	private UserRole userRole;

	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getUsercode() {
		return usercode;
	}



	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}



	public String getUsercard() {
		return usercard;
	}



	public void setUsercard(String usercard) {
		this.usercard = usercard;
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



	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}



	public String getTell() {
		return tell;
	}



	public void setTell(String tell) {
		this.tell = tell;
	}



	public Integer getAge() {
		return age;
	}



	public void setAge(Integer age) {
		this.age = age;
	}



	public String getLocked() {
		return locked;
	}



	public void setLocked(String locked) {
		this.locked = locked;
	}

	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

	public RoleInfo getRoleInfo() {
		return roleInfo;
	}

	public void setRoleInfo(RoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}

	public ShrioUser(String id, String usercode, String usercard, String username, String password, String sex,
			String tell, Integer age, String locked) {
		super();
		this.id = id;
		this.usercode = usercode;
		this.usercard = usercard;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.tell = tell;
		this.age = age;
		this.locked = locked;
	}



	public ShrioUser() {
		super();
	}



	@Override
	public String toString() {
		return "ShrioUser [id=" + id + ", usercode=" + usercode + ", usercard=" + usercard + ", username=" + username
				+ ", password=" + password + ", sex=" + sex + ", tell=" + tell + ", age=" + age + ", locked=" + locked
				+ ", roleInfo=" + roleInfo + ", userRole=" + userRole + "]";
	}

	
    
}