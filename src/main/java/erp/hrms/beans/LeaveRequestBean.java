package erp.hrms.beans;

public class LeaveRequestBean {

	private int empLeaveReqID;
	private int reqEmpID;
	private String reqEmpName;
	private String leaveFile;
	private int leaveTypeID;
	private String leaveTypeName;
	private String leaveStart;
	private String leaveEnd;
	private int leaveDays;
	private String leaveReason;
	private String leaveRemarks;
	private String leaveStatus;
	
	private int empID;
	private String empName;
	
	private int leaveID;
	private String leaveName;
	
	private String dayEmp;
	private String dayStart;
	private String dayEnd;
	
	// tbl_emp_leave LEAVE BALANCE
	private int balID;
	private int balEmpID;
	private int balLeaveID;
	private String balLeaveName;
	private String balance;
	
	// LEAVE REQUEST
	public int getEmpLeaveReqID() {
		return empLeaveReqID;
	}
	public void setEmpLeaveReqID(int empLeaveReqID) {
		this.empLeaveReqID = empLeaveReqID;
	}
	public int getReqEmpID() {
		return reqEmpID;
	}
	public void setReqEmpID(int reqEmpID) {
		this.reqEmpID = reqEmpID;
	}
	public String getReqEmpName() {
		return reqEmpName;
	}
	public void setReqEmpName(String reqEmpName) {
		this.reqEmpName = reqEmpName;
	}
	public String getLeaveFile() {
		return leaveFile;
	}
	public void setLeaveFile(String leaveFile) {
		this.leaveFile = leaveFile;
	}
	public int getLeaveTypeID() {
		return leaveTypeID;
	}
	public void setLeaveTypeID(int leaveTypeID) {
		this.leaveTypeID = leaveTypeID;
	}
	public String getLeaveTypeName() {
		return leaveTypeName;
	}
	public void setLeaveTypeName(String leaveTypeName) {
		this.leaveTypeName = leaveTypeName;
	}
	public String getLeaveStart() {
		return leaveStart;
	}
	public void setLeaveStart(String leaveStart) {
		this.leaveStart = leaveStart;
	}
	public String getLeaveEnd() {
		return leaveEnd;
	}
	public void setLeaveEnd(String leaveEnd) {
		this.leaveEnd = leaveEnd;
	}
	public int getLeaveDays() {
		return leaveDays;
	}
	public void setLeaveDays(int leaveDays) {
		this.leaveDays = leaveDays;
	}
	public String getLeaveReason() {
		return leaveReason;
	}
	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}
	public String getLeaveRemarks() {
		return leaveRemarks;
	}
	public void setLeaveRemarks(String leaveRemarks) {
		this.leaveRemarks = leaveRemarks;
	}
	public String getLeaveStatus() {
		return leaveStatus;
	}
	public void setLeaveStatus(String leaveStatus) {
		this.leaveStatus = leaveStatus;
	}
	
	
	// EMPLOYEE 

	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}


	
	// LEAVE TYPE
	public int getLeaveID() {
		return leaveID;
	}
	public void setLeaveID(int leaveID) {
		this.leaveID = leaveID;
	}
	public String getLeaveName() {
		return leaveName;
	}
	public void setLeaveName(String leaveName) {
		this.leaveName = leaveName;
	}

	// LEAVE BALANCE
	
	public int getBalID() {
		return balID;
	}
	public void setBalID(int balID) {
		this.balID = balID;
	}
	public int getBalEmpID() {
		return balEmpID;
	}
	public void setBalEmpID(int balEmpID) {
		this.balEmpID = balEmpID;
	}
	public int getBalLeaveID() {
		return balLeaveID;
	}
	public void setBalLeaveID(int balLeaveID) {
		this.balLeaveID = balLeaveID;
	}
	public String getBalLeaveName() {
		return balLeaveName;
	}
	public void setBalLeaveName(String balLeaveName) {
		this.balLeaveName = balLeaveName;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getDayEmp() {
		return dayEmp;
	}
	public void setDayEmp(String dayEmp) {
		this.dayEmp = dayEmp;
	}
	public String getDayStart() {
		return dayStart;
	}
	public void setDayStart(String dayStart) {
		this.dayStart = dayStart;
	}
	public String getDayEnd() {
		return dayEnd;
	}
	public void setDayEnd(String dayEnd) {
		this.dayEnd = dayEnd;
	}

}
