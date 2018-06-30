package erp.hrms.beans;

public class Shift {
	
	private int shiftId;
	private String shiftCode;
	private String gracePeriod;
	private String startTime;
	private String endTime;
	private String sRemarks;
	private String sGraceTime;
	private int schedId;
	//JOBCATEG
	private int jobCategId;
	private String jobCategName;
	
	public int getShiftId() {
		return shiftId;
	}
	public void setShiftId(int shiftId) {
		this.shiftId = shiftId;
	}
	public String getShiftCode() {
		return shiftCode;
	}
	public void setShiftCode(String shiftCode) {
		this.shiftCode = shiftCode;
	}
	public String getGracePeriod() {
		return gracePeriod;
	}
	public void setGracePeriod(String gracePeriod) {
		this.gracePeriod = gracePeriod;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String i) {
		this.startTime = i;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String i) {
		this.endTime = i;
	}
	public String getsRemarks() {
		return sRemarks;
	}
	public void setsRemarks(String sRemarks) {
		this.sRemarks = sRemarks;
	}
	public int getSchedId() {
		return schedId;
	}
	public void setSchedId(int schedId) {
		this.schedId = schedId;
	}
	public String getsGraceTime() {
		return sGraceTime;
	}
	public void setsGraceTime(String sGraceTime) {
		this.sGraceTime = sGraceTime;
	}
	public int getJobCategId() {
		return jobCategId;
	}
	public void setJobCategId(int jobCategId) {
		this.jobCategId = jobCategId;
	}
	public String getJobCategName() {
		return jobCategName;
	}
	public void setJobCategName(String jobCategName) {
		this.jobCategName = jobCategName;
	}

}
