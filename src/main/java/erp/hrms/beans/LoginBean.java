package erp.hrms.beans;

public class LoginBean {

	private String username;
	private String password;
	private String cur_un;
	private String cur_pw;
	private String cur_role;
	private String cur_name;
	private String cur_dept;
	private int cur_id;
	
	private int appID;
	private String appName;
	private String appRole;
	
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
	public String getCur_un() {
		return cur_un;
	}
	public String setCur_un(String cur_un) {
		return this.cur_un = cur_un;
	}
	public String getCur_pw() {
		return cur_pw;
	}
	public String setCur_pw(String cur_pw) {
		return this.cur_pw = cur_pw;
	}
	public String getCur_role() {
		return cur_role;
	}
	public String setCur_role(String cur_role) {
		return this.cur_role = cur_role;
	}
	public String getCur_name() {
		return cur_name;
	}
	public String setCur_name(String cur_name) {
		return this.cur_name = cur_name;
	}
	public String getCur_dept() {
		return cur_dept;
	}
	public String setCur_dept(String cur_dept) {
		return this.cur_dept = cur_dept;
	}
	public int getCur_id() {
		return cur_id;
	}
	public int setCur_id(int cur_id) {
		return this.cur_id = cur_id;
	}
	public int getAppID() {
		return appID;
	}
	public void setAppID(int appID) {
		this.appID = appID;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public String getAppRole() {
		return appRole;
	}
	public void setAppRole(String appRole) {
		this.appRole = appRole;
	}
	
}
