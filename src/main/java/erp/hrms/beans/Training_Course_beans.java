package erp.hrms.beans;

public class Training_Course_beans {


	
	
	public int course_Id;
	public int getCourse_Id() {
		return course_Id;
	}
	public void setCourse_Id(int course_Id) {
		this.course_Id = course_Id;
	}
	public String getCourse_Title() {
		return course_Title;
	}
	public void setCourse_Title(String course_Title) {
		this.course_Title = course_Title;
	}
	public String getCourse_Description() {
		return course_Description;
	}
	public void setCourse_Description(String course_Description) {
		this.course_Description = course_Description;
	}
	public String getCourse_Type() {
		return course_Type;
	}
	public void setCourse_Type(String course_Type) {
		this.course_Type = course_Type;
	}
	public String getCourse_Startdate() {
		return course_Startdate;
	}
	public void setCourse_Startdate(String course_Startdate) {
		this.course_Startdate = course_Startdate;
	}
	public String getCourse_Enddate() {
		return course_Enddate;
	}
	public void setCourse_Enddate(String course_Enddate) {
		this.course_Enddate = course_Enddate;
	}
	public String getCourse_Training_Hours() {
		return course_Training_Hours;
	}
	public void setCourse_Training_Hours(String course_Training_Hours) {
		this.course_Training_Hours = course_Training_Hours;
	}
	public int getFacility_Id() {
		return facility_Id;
	}
	public void setFacility_Id(int facility_Id) {
		this.facility_Id = facility_Id;
	}
	public String getFacility_Name() {
		return facility_Name;
	}
	public void setFacility_Name(String facility_Name) {
		this.facility_Name = facility_Name;
	}
	public String getCourse_Topic() {
		return course_Topic;
	}
	public void setCourse_Topic(String course_Topic) {
		this.course_Topic = course_Topic;
	}
	public int getTrainer_Id() {
		return trainer_Id;
	}
	public void setTrainer_Id(int trainer_Id) {
		this.trainer_Id = trainer_Id;
	}
	public String getTrainer_Name() {
		return trainer_Name;
	}
	public void setTrainer_Name(String trainer_Name) {
		this.trainer_Name = trainer_Name;
	}
	public String course_Title;
	public String course_Description;
	public String course_Type;
	public String course_Startdate;
	public String course_Enddate;
	public String course_Training_Hours;
	
	public int facility_Id;
	public String facility_Name;
	
	public String course_Topic;

	public int trainer_Id;
	public String trainer_Name;

}
