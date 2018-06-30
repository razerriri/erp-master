package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.FacilityBeans;
import erp.hrms.beans.FacilityListBeans;
import erp.hrms.beans.TrainerBeans;
import erp.hrms.beans.TrainerListBeans;
import erp.hrms.beans.TrainingAddBeans;
import erp.hrms.beans.Training_Course_beans;
import erp.hrms.beans.trainingdevbeans;
import erp.hrms.beans.trainingdevlist2beans;
import erp.hrms.beans.trainingdevlistbeans;

public class trainingdao1 {
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;

	}
	
	public List<FacilityListBeans> getFacilityList(){
		return template.query("SELECT Facility_Id,Facility_Name,Location,Status FROM Facility", new RowMapper<FacilityListBeans>() {

			public FacilityListBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				FacilityListBeans g = new FacilityListBeans();
				g.setFacilityId(rs.getInt(1));
				g.setFacilityName(rs.getString(2));
				g.setLocation(rs.getString(3));
				g.setStatus(rs.getString(4));
				return g;
			}
			
		});
		
	}	
	
	public List<trainingdevbeans> gettrainingdevlist(){
		return template.query("SELECT trainingdev_id,course_title,trainer_name,facility_name,transaction_date,emp_first_name + ' ' + emp_last_name as 'Employee Name' from trainingdev_employee td inner join tbl_employee e on td.emp_id = e.emp_id inner join training_course tc on td.training_id=tc.training_id inner join trainer t on tc.trainer_id = t.trainer_id inner join facility f on tc.facility_id = f.facility_id", new RowMapper<trainingdevbeans>() {

			public trainingdevbeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				trainingdevbeans g = new trainingdevbeans();	
				g.setTrainingdev_Id(rs.getInt(1));
				g.setCourse_Name(rs.getString(2));
				g.setTrainer_Name(rs.getString(3));
				g.setFacility_Name(rs.getString(4));
				g.setTransaction_date(rs.getString(5));
				g.setEname(rs.getString(6));
				
				return g;
			}
			
		});
		
	}


	public List<trainingdevlistbeans> gettraininigdevlistbeans(){		
		return template.query("SELECT emp_id,emp_first_name + ' ' + emp_last_name as 'Employee Name' from tbl_employee", new RowMapper<trainingdevlistbeans>() {

			public trainingdevlistbeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				trainingdevlistbeans g = new trainingdevlistbeans();
				g.setEmployee_id(rs.getInt(1));
				g.setEmployee_name(rs.getString(2));
			
				return g;
			}
			
		});
		
	}
	
	public List<trainingdevlist2beans> gettraininigdevlist2beans(){
		return template.query("SELECT training_id,course_title from training_course", new RowMapper<trainingdevlist2beans>() {

			public trainingdevlist2beans mapRow(ResultSet rs, int rowNum) throws SQLException {
				trainingdevlist2beans g = new trainingdevlist2beans();
				g.setTraining_course_id(rs.getInt(1));
				g.setTraining_course_name(rs.getString(2));
			
				return g;
			}
			
		});
		
	}
	
	
	public List<TrainerListBeans> getTrainerList(){
		return template.query("SELECT Trainer_Id,Trainer_Name,Trainer_Address,Trainer_Birthdate,Trainer_Age,Trainer_Contact,Trainer_Gender,Trainer_Job FROM TRAINER", new RowMapper<TrainerListBeans>() {

			public TrainerListBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				TrainerListBeans g = new TrainerListBeans();
				g.setTrainerId(rs.getInt(1));
				g.setTrainerName(rs.getString(2));
				g.setTrainerAddress(rs.getString(3));
				g.setTrainerBirthdate(rs.getString(4));
				g.setTrainerAge(rs.getInt(5));
				g.setTrainerContact(rs.getString(6));
				g.setTrainerGender(rs.getString(7));
				g.setTrainerJob(rs.getString(8));
				return g;
			}
			
		});
		
	}

	
	
	
	
	
	
	
	public int save(Training_Course_beans t) {
		String sql = "Insert into Training_Course(Course_Title,Course_Description,Course_Type,Course_Startdate,Course_Enddate,Course_Training_Hours,Facility_Id,Course_Topic,Trainer_Id) values('"+t.getCourse_Title()+"','"+t.getCourse_Description()+"','"+t.getCourse_Type()+"','"+t.getCourse_Startdate()+"','"+t.getCourse_Enddate()+"','"+t.getCourse_Training_Hours()+"','"+t.getFacility_Id()+"','"+t.getCourse_Topic()+"','"+t.getTrainer_Id()+"')";
		return template.update(sql);
		
	}
	
	public int save_add_trainingDev(TrainingAddBeans b) {
		String sql = "INSERT INTO trainingdev_employee (emp_id,training_id,transaction_date) values ('"+b.getT_emp_id()+"','"+b.getT_course_id()+"',GETDATE())";
		return template.update(sql);
		
	}
	
	
	
	public List<FacilityBeans> getFacility(){
		return template.query("SELECT Facility_id,Facility_name FROM FACILITY", new RowMapper<FacilityBeans>() {

			public FacilityBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				FacilityBeans g = new FacilityBeans();
				g.setFacility_id(rs.getInt(1));
				g.setFacility_name(rs.getString(2));
			
				return g;
			}
			
		});
		
	}
	
	public List<TrainerBeans> getTrainer(){
		return template.query("SELECT Trainer_id,Trainer_name FROM TRAINER", new RowMapper<TrainerBeans>() {

			public TrainerBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				TrainerBeans g = new TrainerBeans();
				g.setTrainer_id(rs.getInt(1));
				g.setTrainer_name(rs.getString(2));
				return g;
			}
			
		});
		
	}
	 
	
	
	
	public List<Training_Course_beans> getTraining(){
		return template.query("SELECT tc.Training_Id, Course_Title, Course_Description, Course_Type, Course_Startdate, Course_Enddate, Course_Training_Hours, Course_Topic,fc.facility_id,facility_name,tn.trainer_id,Trainer_Name FROM  Training_Course tc inner join facility fc on tc.facility_id = fc.facility_id inner join trainer tn on tc.trainer_id = tn.trainer_id", new RowMapper<Training_Course_beans>() {

			public Training_Course_beans mapRow(ResultSet rs, int rowNum) throws SQLException {
				Training_Course_beans g = new Training_Course_beans();
				g.setCourse_Id(rs.getInt(1));
				g.setCourse_Title(rs.getString(2));
				g.setCourse_Description(rs.getString(3));
				g.setCourse_Type(rs.getString(4));
				g.setCourse_Startdate(rs.getString(5));
				g.setCourse_Enddate(rs.getString(6));
				g.setCourse_Training_Hours(rs.getString(7));
				g.setCourse_Topic(rs.getString(8));
				g.setFacility_Id(rs.getInt(9));
				g.setFacility_Name(rs.getString(10));
				g.setTrainer_Id(rs.getInt(11));
				g.setTrainer_Name(rs.getString(12));
				
				return g;
			}
			
		});
		
		
		
	}
	
	
	
	public int save_trainer(TrainerListBeans t) {
		String sql = "Insert into Trainer(Trainer_Name,Trainer_Address,Trainer_Birthdate,Trainer_Age,Trainer_Contact,Trainer_Gender,Trainer_Job) values('"+t.getTrainerName()+"','"+t.getTrainerAddress()+"','"+t.getTrainerBirthdate()+"','"+t.getTrainerAge()+"','"+t.getTrainerContact()+"','"+t.getTrainerGender()+"','"+t.getTrainerJob()+"')";
		return template.update(sql);
	
	

	}
	
	public int save_facility(FacilityListBeans t) {
		String sql = "Insert into Facility(Facility_Name,Location,Status) values('"+t.getFacilityName()+"','"+t.getLocation()+"','"+t.getStatus()+"')";
		return template.update(sql);
	}
	
	public int update_training_course(Training_Course_beans t) {
		String sql = "UPDATE training_course SET course_title='"+t.getCourse_Title()+"',course_description='"+t.getCourse_Description()+"',course_type='"+t.getCourse_Type()+"',course_startdate='"+t.getCourse_Startdate()+"',course_enddate='"+t.getCourse_Enddate()+"',course_training_hours='"+t.getCourse_Training_Hours()+"',facility_Id='"+t.getFacility_Id()+"',course_topic='"+t.getCourse_Topic()+"',trainer_Id='"+t.getTrainer_Id()+"' where training_id='"+t.getCourse_Id()+"'";
		return template.update(sql);
		
	}
	
	public int update_trainer(TrainerListBeans t) {
		String sql = "UPDATE trainer SET trainer_name='"+t.getTrainerName()+"',trainer_address='"+t.getTrainerAddress()+"',trainer_birthdate='"+t.getTrainerBirthdate()+"',trainer_age='"+t.getTrainerAge()+"',trainer_contact='"+t.getTrainerContact()+"',trainer_gender='"+t.getTrainerGender()+"',trainer_job='"+t.getTrainerJob()+"' where trainer_id='"+t.getTrainerId()+"'";
		return template.update(sql);
		
	}
	
	public int update_facility(FacilityListBeans t) {
		String sql = "UPDATE facility SET facility_name='"+t.getFacilityName()+"',Location='"+t.getLocation()+"',Status='"+t.getStatus()+"' where facility_id='"+t.getFacilityId()+"'";
		return template.update(sql);
		
	}
	
	
	
} 	



