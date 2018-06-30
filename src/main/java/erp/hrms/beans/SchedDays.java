package erp.hrms.beans;

public class SchedDays {

	private int dayId;
	private String dayName;
	
	private int schedId;
	private String startDate;
	private String endDate;
	
	//REF_SCHEDULE
	private int empId;
	private String empName;
	private String workingDays;
	private String shiftTime;
	private String schedStatus;
	private String dateEval;
	
	//
	private String jobName;
	private String deptName;
	private String status;
	private String dateAssigned;
	
	// assigning shift
	private int shiftId;
	
	
	
	public int getDayId() {
		return dayId;
	}
	public void setDayId(int dayId) {
		this.dayId = dayId;
	}
	public String getDayName() {
		return dayName;
	}
	public void setDayName(String dayName) {
		this.dayName = dayName;
	}
	public String getStartDate() {
		return startDate;
	}
	
	////
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public int getSchedId() {
		return schedId;
	}
	public void setSchedId(int schedId) {
		this.schedId = schedId;
	}
	public String getWorkingDays() {
		return workingDays;
	}
	public void setWorkingDays(String workingDays) {
		this.workingDays = workingDays;
	}
	public String getShiftTime() {
		return shiftTime;
	}
	public void setShiftTime(String shiftTime) {
		this.shiftTime = shiftTime;
	}
	public String getSchedStatus() {
		return schedStatus;
	}
	public void setSchedStatus(String schedStatus) {
		this.schedStatus = schedStatus;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getDateEval() {
		return dateEval;
	}
	public void setDateEval(String dateEval) {
		this.dateEval = dateEval;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDateAssigned() {
		return dateAssigned;
	}
	public void setDateAssigned(String dateAssigned) {
		this.dateAssigned = dateAssigned;
	}
	public int getShiftId() {
		return shiftId;
	}
	public void setShiftId(int shiftId) {
		this.shiftId = shiftId;
	}
}
