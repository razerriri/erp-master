package erp.hrms.beans;

public class AttendanceBeans {

	private String td_Entry_Date;
	private String td_time_in;
	private String td_time_out;
	private int emp_id;
	private String td_Remarks;
	private String emp_user;
	private String emp_pass;
	private String emp_name;
	
	public String getTd_Entry_Date() {
		return td_Entry_Date;
	}
	public void setTd_Entry_Date(String td_Entry_Date) {
		this.td_Entry_Date = td_Entry_Date;
	}
	public String getTd_time_in() {
		return td_time_in;
	}
	public void setTd_time_in(String td_time_in) {
		this.td_time_in = td_time_in;
	}
	public String getTd_time_out() {
		return td_time_out;
	}
	public void setTd_time_out(String td_time_out) {
		this.td_time_out = td_time_out;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public int setEmp_id(int emp_id) {
		return this.emp_id = emp_id;
	}
	public String getTd_Remarks() {
		return td_Remarks;
	}
	public void setTd_Remarks(String td_Remarks) {
		this.td_Remarks = td_Remarks;
	}
	public String getEmp_user() {
		return emp_user;
	}
	public void setEmp_user(String emp_user) {
		this.emp_user = emp_user;
	}
	public String getEmp_pass() {
		return emp_pass;
	}
	public void setEmp_pass(String emp_pass) {
		this.emp_pass = emp_pass;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public String setEmp_name(String emp_name) {
		return this.emp_name = emp_name;
	}
	

}
