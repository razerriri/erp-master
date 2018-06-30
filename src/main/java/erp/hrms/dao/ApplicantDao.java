package erp.hrms.dao;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import erp.hrms.beans.ApplicantBeans;
import erp.hrms.beans.RecruitmentBean;
import erp.hrms.dao.LoginDao;


public class ApplicantDao
 {
	
	public JdbcTemplate template;
	
	@Autowired
	LoginDao loginDao;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	// SUBMIT APPLICATION
	public int submitApplication(RecruitmentBean b) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String todayDate = dateFormat.format(date).toString();
		String sql = "INSERT INTO TBL_APPLICATION(APP_ID, JOB_POST_ID, APPLICATION_STATUS, APPLICATION_DATE, APPLICATION_PHASE) VALUES('" + loginDao.appID + "','" + b.getPostID() + "','" + "Ongoing" + "','" + todayDate + "','" + "Preliminaries" + "')";
		return template.update(sql);
	}
	
	public int updateApplication(ApplicantBeans b) {
		String sql = "UPDATE TBL_APPLICATION SET APPLICATION_PHASE='" + b.getAppPhase() + "' WHERE APPLICATION_ID='" + b.getApplicationID() + "'";
		return template.update(sql);
	}
	
	// LIST APPLICANT
		 public List<ApplicantBeans> dropdownApp() {
			String sql = "SELECT A.APPLICATION_ID, A.APP_ID, (AP.APP_FNAME + ' ' + AP.APP_LNAME) AS [APP_NAME] FROM TBL_APPLICATION AS A INNER JOIN TBL_APPLICANT AS AP ON A.APP_ID = AP.APP_ID WHERE A.APPLICATION_PHASE = 'Final Interview'";
			return template.query(sql, new RowMapper<ApplicantBeans>() {
				public ApplicantBeans mapRow(ResultSet rs, int row) throws SQLException {
					ApplicantBeans app = new ApplicantBeans();
					app.setApplicationID(rs.getInt("APPLICATION_ID"));
					app.setAppID(rs.getInt("APP_ID"));
					app.setAppName(rs.getString("APP_NAME"));
					return app;
				}

			});
		 }
	
		//VIEW FOR APPLICANT NAME
		public List<ApplicantBeans> viewApplication()
		{
			String sql = "SELECT A.APPLICATION_ID, A.APP_ID, (AP.APP_FNAME + ' ' + AP.APP_LNAME) AS [APP_NAME], A.JOB_POST_ID, JB.JOB_NAME, A.SCORE_ID, A.APPLICATION_STATUS, A.APPLICATION_DATE, A.APPLICATION_PHASE, A.APPLICATION_EVALUATOR FROM TBL_APPLICATION AS A \r\n" + 
					"	INNER JOIN TBL_APPLICANT AS AP ON A.APP_ID = AP.APP_ID\r\n" + 
					"	INNER JOIN TBL_JOB_POST AS J ON A.JOB_POST_ID = J.JOB_POST_ID\r\n" + 
					"	INNER JOIN TBL_JOB AS JB ON J.JOB_ID = JB.JOB_ID";
			return template.query(sql, new RowMapper<ApplicantBeans>() 
			{
				public ApplicantBeans mapRow(ResultSet rs, int row) throws SQLException{
					ApplicantBeans app = new ApplicantBeans();
					app.setApplicationID(rs.getInt("application_id"));
					app.setAppID(rs.getInt("app_id"));
					app.setAppName(rs.getString("app_name"));
					app.setJobpostID(rs.getInt("job_post_id"));
					app.setJobTitle(rs.getString("job_name"));
					app.setScoreID(rs.getInt("score_id"));
					app.setAppStatus(rs.getString("application_status"));
					app.setAppDate(rs.getString("application_date"));
					app.setAppPhase(rs.getString("application_phase"));
					app.setAppEvaluator(rs.getString("Application_Evaluator"));			
					return app;
					}
			});
		}
			
		//SUBMIT PSB/SCORE
		public int submitPSB(ApplicantBeans b) {
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			Date date = new Date();
			String todayDate = dateFormat.format(date).toString();
			int scoreAverage = b.getScorePerformance() + b.getScoreBehavioral() + b.getScoreEducation() + b.getScoreTraining() + b.getScoreAttitude() + b.getScoreValues() + b.getScorePotentials() + b.getScoreExperience();
			String sql = "INSERT INTO TBL_SCORE VALUES('" + todayDate + "', '" + loginDao.name + "', '" + scoreAverage + "', '" + b.getScorePerformance() + "', '" + b.getScoreBehavioral() + "', '" + b.getScoreEducation() + "', '" + b.getScoreTraining() + "', '" + b.getScoreAttitude() + "', '" + b.getScoreValues() + "', '" + b.getScorePotentials() + "', '" + b.getScoreExperience() + "')";
			return template.update(sql);
		}
		
		public int updateAppScore(ApplicantBeans b) {
			String sql = "UPDATE TBL_APPLICATION SET SCORE_ID=(SELECT MAX(SCORE_ID) FROM TBL_SCORE), APPLICATION_EVALUATOR='" + loginDao.name + "', APPLICATION_STATUS='Completed' WHERE APPLICATION_ID ='" + b.getApplicationID() + "'";
			return template.update(sql);
		}
		
		//VIEW FOR APPLICANT NAME
		public List<ApplicantBeans> viewHired()
		{
			String sql = "SELECT A.APPLICATION_ID, A.APP_ID, (AP.APP_FNAME + ' ' + AP.APP_LNAME) AS [APP_NAME],  AP.APP_PASSWORD, AP.APP_FNAME, AP.APP_MNAME, AP.APP_LNAME, AP.APP_SUFFIX, AP.APP_BDATE, AP.APP_PBIRTH, AP.APP_GENDER, AP.APP_CIVIL, AP.APP_ADDRESS, AP.APP_CONTACT, AP.APP_EMAIL, A.JOB_POST_ID, J.JOB_ID, JB.JOB_NAME, A.SCORE_ID, S.SCORE_AVE, A.APPLICATION_STATUS, A.APPLICATION_EVALUATOR, S.DATE_EVALUATED, S.EVALUATOR, S.SCORE_AVE, S.SCORE_PERFORMANCE, S.SCORE_BEHAVIORAL, S.SCORE_EDUC, S.SCORE_TRAINING, S.SCORE_ATTITUDE, S.SCORE_VALUES, S.SCORE_POTENTIALS, S.SCORE_EXPERIENCE, D.DEPT_ID\r\n" + 
					"	FROM TBL_APPLICATION AS A\r\n" + 
					"		INNER JOIN TBL_APPLICANT AS AP ON A.APP_ID = AP.APP_ID\r\n" + 
					"		INNER JOIN TBL_JOB_POST AS J ON A.JOB_POST_ID = J.JOB_POST_ID \r\n" + 
					"		INNER JOIN TBL_JOB AS JB ON J.JOB_ID = JB.JOB_ID\r\n" + 
					"		INNER JOIN TBL_SCORE AS S ON A.SCORE_ID = S.SCORE_ID\r\n" + 
					"		INNER JOIN TBL_DEPARTMENT AS D ON JB.DEPT_ID = D.DEPT_ID";
			return template.query(sql, new RowMapper<ApplicantBeans>() 
			{
				public ApplicantBeans mapRow(ResultSet rs, int row) throws SQLException{
					ApplicantBeans app = new ApplicantBeans();
					app.setApplicationID(rs.getInt("application_id"));
					app.setAppID(rs.getInt("app_id"));
					app.setAppName(rs.getString("app_name"));
					app.setJobTitle(rs.getString("job_name"));
					app.setJobID(rs.getInt("job_id"));
					app.setDeptID(rs.getInt("dept_id"));
					
					app.setScoreAverage(rs.getInt("score_ave"));
					app.setAppStatus(rs.getString("application_status"));
					app.setAppEvaluator(rs.getString("application_evaluator"));
					app.setScorePerformance(rs.getInt("score_performance"));
					app.setScoreBehavioral(rs.getInt("score_behavioral"));
					app.setScoreEducation(rs.getInt("score_educ"));
					app.setScoreTraining(rs.getInt("score_training"));
					app.setScoreAttitude(rs.getInt("score_attitude"));
					app.setScoreValues(rs.getInt("score_values"));
					app.setScorePotentials(rs.getInt("score_potentials"));
					app.setScoreExperience(rs.getInt("score_experience"));
					
					//Migrate applicant data to employee
					app.setAppPassword(rs.getString("app_password"));
					app.setAppFName(rs.getString("app_fname"));
					app.setAppMName(rs.getString("app_mname"));
					app.setAppLName(rs.getString("app_lname"));
					app.setAppSuffix(rs.getString("app_suffix"));
					app.setAppBDate(rs.getString("app_bdate"));
					app.setAppPBirth(rs.getString("app_pbirth"));
					app.setAppGender(rs.getString("app_gender"));
					app.setAppCivil(rs.getString("app_civil"));
					app.setAppAddress(rs.getString("app_address"));
					app.setAppContact(rs.getString("app_contact"));
					app.setAppEmail(rs.getString("app_email"));
					return app;
					}
			});
		}
		
	//APPROVAL OF HIRED
	public int updateHired(ApplicantBeans b) {
		String sql = "UPDATE TBL_APPLICATION SET APPLICATION_STATUS= 'Hired' WHERE APPLICATION_ID='" + b.getApplicationID() + "'";
		return template.update(sql);
	}
	
	//MIGRATE DATA TO EMPLOYEE
	public int submitEmployee(ApplicantBeans b) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String todayDate = dateFormat.format(date).toString();
		String sql = "INSERT INTO TBL_EMPLOYEE(EMP_FIRST_NAME, EMP_MIDDLE_NAME, EMP_LAST_NAME, EMP_HIRE_DATE, EMP_STATUS, EMP_BASE_PAY, EMP_PASSWORD, USER_ROLE_ID) VALUES('" + b.getAppFName() + "', '" + b.getAppMName() + "', '" + b.getAppLName() + "', '" + todayDate + "', '" + "Provisionary" + "', '" + b.getBasePay() + "', '" + b.getAppPassword() + "', '" + "5" + "')";
		return template.update(sql);
	}
	
	public int submitEmpInfo(ApplicantBeans b) {
		String sql = "INSERT INTO TBL_EMPLOYEE_INFO(EMP_ID, EMP_CIVIL, EMP_ADDRESS, GENDER, BIRTHDATE, BIRTHPLACE, CONTACT_NO, EMAIL_ADD) VALUES((SELECT MAX(EMP_ID) FROM TBL_EMPLOYEE), '" + b.getAppCivil() + "', '" + b.getAppAddress() + "', '" + b.getAppGender() + "', '" + b.getAppBDate() + "', '" + b.getAppPBirth() + "', '" + b.getAppContact() + "', '" + b.getAppEmail() + "')";
		return template.update(sql);
	}
	
	public int submitEmpJob(ApplicantBeans b) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String todayDate = dateFormat.format(date).toString();
		String sql = "INSERT INTO REF_EMP_JOB(emp_id, job_id, begin_date) VALUES((SELECT MAX(EMP_ID) FROM TBL_EMPLOYEE),'" + b.getJobID() + "','" + todayDate +	 "')";
		return template.update(sql);
	}
	
	//INSERT INITIAL VALUE FOR EMPLOYEE LEAVE
	public int initEmpLeave(ApplicantBeans b) {
		String sql = "EXECUTE [dbo].[SP_INITEMPLEAVE] @EMPROLE='" + b.getJobID() +"', @EMPLOC='" + b.getDeptID() + "', @EMPGENDER='" + b.getAppGender() + "', @EMPMARITAL='" + b.getAppCivil() + "'";
		return template.update(sql);
	}
}
