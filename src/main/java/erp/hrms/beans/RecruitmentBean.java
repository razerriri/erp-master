package erp.hrms.beans;

public class RecruitmentBean {
	//Job Post
	private int postID;
	private String postTitle;
	private int postJob;
	private String postJobName;
	private String postDesc;
	private int postReq;
	private String postReqName;
	private String postDate;
	private String postStat; 
	private String payMin;
	private String payMax;

	//Job Title
	private int jobID;
	private String jobName;

	// Job Post
	public int getPostID() {
		return postID;
	}
	public void setPostID(int postID) {
		this.postID = postID;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public int getPostJob() {
		return postJob;
	}
	public void setPostJob(int postJob) {
		this.postJob = postJob;
	}
	public String getPostJobName() {
		return postJobName;
	}
	public void setPostJobName(String postJobName) {
		this.postJobName = postJobName;
	}
	public String getPostDesc() {
		return postDesc;
	}
	public void setPostDesc(String postDesc) {
		this.postDesc = postDesc;
	}
	public int getPostReq() {
		return postReq;
	}
	public void setPostReq(int postReq) {
		this.postReq = postReq;
	}
	public String getPostReqName() {
		return postReqName;
	}
	public void setPostReqName(String postReqName) {
		this.postReqName = postReqName;
	}
	public String getPostDate() {
		return postDate;
	}
	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}
	public String getPostStat() {
		return postStat;
	}
	public void setPostStat(String postStat) {
		this.postStat = postStat;
	}
	
	public String getPayMin() {
		return payMin;
	}
	public void setPayMin(String payMin) {
		this.payMin = payMin;
	}
	public String getPayMax() {
		return payMax;
	}
	public void setPayMax(String payMax) {
		this.payMax = payMax;
	}
	//Job Title
	public int getJobID() {
		return jobID;
	}
	public void setJobID(int jobID) {
		this.jobID = jobID;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	

}
