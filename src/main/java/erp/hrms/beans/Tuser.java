package erp.hrms.beans;

public class Tuser
{
    private int tempid; 
	public int tsuserId;
	private String tstatus;
	private String tapprover;
	private String tapprovaldate;
	private String tsubmissiondate;
	private String tmonth;
	private int tyear;
	private String empmanager;
	private String empname;
	private String empjob;
	private float treghrs;
	public int empid;
	private float tothrs;
	private float ttotalhrs;
	private String ttype;
	
	private String capprove;
	private String capprovelastyear;
//	private String cdisapprove;
//	private String cdisapprovelastyear;
//	private String cpending;
//	private String cpendinglastyear;
	private String timeinval; 
	private String timeoutval; 
	private String deptname;
	private float sumreghrs;
	private float sumunderhrs;    
	private float sumlatehrs;
	private String forthemonthof;
	private String weekstart;
	private int tdaysno;
	private String weekend;

	
	private String tnadate;
	private float tnatotal;
	
	public int getTsuserId() {
		return tsuserId;
	}
	public void setTsuserId(int tsuserId) {
		this.tsuserId = tsuserId;
	}
	public String getTapprover() {
		return tapprover;
	}
	public void setTapprover(String tapprover) {
		this.tapprover = tapprover;
	}
	public String getTstatus() {
		return tstatus;
	}
	public void setTstatus(String tstatus) {
		this.tstatus = tstatus;
	}
	public String getTsubmissiondate() {
		return tsubmissiondate;
	}
	public void setTsubmissiondate(String tsubmissiondate) {
		this.tsubmissiondate = tsubmissiondate;
	}
	
	public void setTreghrs(int treghrs) {
		this.treghrs = treghrs;
	}
	
	public void setTothrs(int tothrs) {
		this.tothrs = tothrs;
	}
	
	public void setTtotalhrs(int ttotalhrs) {
		this.ttotalhrs = ttotalhrs;
	}
	public String getTtype() {
		return ttype;
	}
	public void setTtype(String ttype) {
		this.ttype = ttype;
	}
	public String getTapprovaldate() {
		return tapprovaldate;
	}
	public void setTapprovaldate(String tapprovaldate) {
		this.tapprovaldate = tapprovaldate;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	public String getEmpmanager() {
		return empmanager;
	}
	public void setEmpmanager(String empmanager) {
		this.empmanager = empmanager;
	}
	public String getEmpjob() {
		return empjob;
	}
	public void setEmpjob(String empjob) {
		this.empjob = empjob;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public float getTreghrs() {
		return treghrs;
	}
	public void setTreghrs(float treghrs) {
		this.treghrs = treghrs;
	}
	public float getTothrs() {
		return tothrs;
	}
	public void setTothrs(float tothrs) {
		this.tothrs = tothrs;
	}
	public float getTtotalhrs() {
		return ttotalhrs;
	}
	public void setTtotalhrs(float ttotalhrs) {
		this.ttotalhrs = ttotalhrs;
	}
	public String getCapprove() {
		return capprove;
	}
	public void setCapprove(String capprove) {
		this.capprove = capprove;
	}
	public String getCapprovelastyear() {
		return capprovelastyear;
	}
	public void setCapprovelastyear(String capprovelastyear) {
		this.capprovelastyear = capprovelastyear;
	}
//	public String getCdisapprove() {
//		return cdisapprove;
//	}
//	public void setCdisapprove(String cdisapprove) {
//		this.cdisapprove = cdisapprove;
//	}
//	public String getCdisapprovelastyear() {
//		return cdisapprovelastyear;
//	}
//	public void setCdisapprovelastyear(String cdisapprovelastyear) {
//		this.cdisapprovelastyear = cdisapprovelastyear;
//	}
//	public String getCpending() {
//		return cpending;
//	}
//	public void setCpending(String cpending) {
//		this.cpending = cpending;
//	}
//	public String getCpendinglastyear() {
//		return cpendinglastyear;
//	}
//	public void setCpendinglastyear(String cpendinglastyear) {
//		this.cpendinglastyear = cpendinglastyear;
//	}
	public String getTimeinval() {
		return timeinval;
	}
	public void setTimeinval(String timeinval) {
		this.timeinval = timeinval;
	}
	public String getTimeoutval() {
		return timeoutval;
	}
	public void setTimeoutval(String timeoutval) {
		this.timeoutval = timeoutval;
	}
	public String getDeptname() {
		return deptname;
	}
	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	public String getTmonth() {
		return tmonth;
	}
	public void setTmonth(String tmonth) {
		this.tmonth = tmonth;
	}
	public int getTyear() {
		return tyear;
	}
	public void setTyear(int tyear) {
		this.tyear = tyear;
	}
	public String getTnadate() {
		return tnadate;
	}
	public void setTnadate(String tnadate) {
		this.tnadate = tnadate;
	}
	public float getTnatotal() {
		return tnatotal;
	}
	public void setTnatotal(float tnatotal) {
		this.tnatotal = tnatotal;
	}
	public float getSumreghrs() {
		return sumreghrs;
	}
	public void setSumreghrs(float sumreghrs) {
		this.sumreghrs = sumreghrs;
	}
	public float getSumunderhrs() {
		return sumunderhrs;
	}
	public void setSumunderhrs(float sumunderhrs) {
		this.sumunderhrs = sumunderhrs;
	}
	public int getTempid() {
		return tempid;
	}
	public void setTempid(int tempid) {
		this.tempid = tempid;
	}
	public float getSumlatehrs() {
		return sumlatehrs;
	}
	public void setSumlatehrs(float sumlatehrs) {
		this.sumlatehrs = sumlatehrs;
	}
	public String getForthemonthof() {
		return forthemonthof;
	}
	public void setForthemonthof(String forthemonthof) {
		this.forthemonthof = forthemonthof;
	}
	public String getWeekstart() {
		return weekstart;
	}
	public void setWeekstart(String weekstart) {
		this.weekstart = weekstart;
	}
	public String getWeekend() {
		return weekend;
	}
	public void setWeekend(String weekend) {
		this.weekend = weekend;
	}
	public int getTdaysno() {
		return tdaysno;
	}
	public void setTdaysno(int tdaysno) {
		this.tdaysno = tdaysno;
	}
	
}
