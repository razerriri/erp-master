package erp.hrms.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.SchedDays;
import erp.hrms.beans.Shift;

public class SchedDayDao {
	
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	
	//save
	public int save(SchedDays s) {
		String sql = "insert into REF_SCHEDULE (EMP_ID, SCHED_DAYS_ID) values ('"+s.getEmpId()+"','"+s.getDayId()+"')";
		return template.update(sql);
	}
	
	
	//assign shift
	
	public int save2(SchedDays s) {
		String sql = "insert REF_SCHEDULE (EMP_ID, SHIFT_ID) values ('"+s.getEmpId()+"', '"+s.getShiftId()+"')";
		return template.update(sql);
	}
	
	//edit assigned shift
	public int edit2(SchedDays s) {
		String sql = "update REF_SCHEDULE set SHIFT_ID = '"+s.getShiftId()+"' where EMP_ID = '"+s.getEmpId()+"'";
		return template.update(sql);
	}
	
	//edit
	public int update(Shift j) {
		String sql = "update TBL_SHIFT set SHIFT_CODE ='"+j.getShiftCode()+"', GRACE_PERIOD  ='"+j.getGracePeriod()+"', START_TIME ='"+j.getStartTime()+"', END_TIME ='"+j.getEndTime()+"' where SHIFT_ID ='"+j.getShiftId()+"'";
		return template.update(sql);
	}
	
	//view employee table
		public List<SchedDays> getEmps(){
			return template.query(" Select DISTINCT E.EMP_ID, E.EMP_FIRST_NAME +' ' + E.EMP_LAST_NAME AS FNAME,\r\n" + 
					"				J.JOB_NAME, D.DEPT_NAME\r\n" + 
					"				from TBL_EMPLOYEE E\r\n" + 
					"				LEFT JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
					"				LEFT JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID \r\n" + 
					"				LEFT JOIN TBL_DEPARTMENT D ON D.DEPT_ID = J.DEPT_ID\r\n" + 
					"				LEFT JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
					"				LEFT JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
					"				WHERE RS.SCHED_STATUS IS NULL ", new RowMapper<SchedDays>() {
				public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					SchedDays e = new SchedDays();
					e.setEmpId(rs.getInt(1));
					e.setEmpName(rs.getString(2));
					e.setJobName(rs.getString(3));
					e.setDeptName(rs.getString(4));
					return e;
				}
				
			});
		
		}
		
		
		
		//view assigned shift 
		
				public List<SchedDays> getEmpShift(){
					return template.query("Select DISTINCT E.EMP_ID, E.EMP_FIRST_NAME +' ' + E.EMP_LAST_NAME AS FNAME,\r\n" + 
							"				J.JOB_NAME, D.DEPT_NAME, S.SHIFT_ID, S.SHIFT_CODE+'; '+ convert(varchar(19),cast(CAST(S.START_TIME AS DATETIME) as time),100)+' - '+ convert(varchar(19),cast(CAST(S.END_TIME AS DATETIME) as time),100) AS TIMEWORK\r\n" + 
							"				from TBL_EMPLOYEE E\r\n" + 
							"				LEFT JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
							"				LEFT JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID \r\n" + 
							"				LEFT JOIN TBL_DEPARTMENT D ON D.DEPT_ID = J.DEPT_ID\r\n" + 
							"				LEFT JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
							"				LEFT JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
							"				WHERE RS.SCHED_STATUS = 'PENDING' AND RS.SCHED_DAYS_ID IS NULL", new RowMapper<SchedDays>() {
						public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
							
							SchedDays e = new SchedDays();
							e.setEmpId(rs.getInt(1));
							e.setEmpName(rs.getString(2));
							e.setJobName(rs.getString(3));
							e.setDeptName(rs.getString(4));
							e.setShiftId(rs.getInt(5));
							e.setShiftTime(rs.getString(6));
							return e;
						}
						
					});
				
				}
		
		
		
	
	
	//view sched days
	public List<SchedDays> getSchedDay(){
		return template.query("SELECT SCHED_DAYS_ID, SCHED_DAYS from TBL_SCHED_DAYS", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				SchedDays e = new SchedDays();
				e.setDayId(rs.getInt(1));
				e.setDayName(rs.getString(2));
				return e;
			}
			
		});
	
	}
	
	/////APPPROVAL
	
	public int updatestatus(SchedDays d) 
	{
		String sql = "UPDATE REF_SCHEDULE SET SCHED_STATUS ='"+ d.getSchedStatus()+ "', DATE_APPROVED = GetDate() where EMP_ID = '"+d.getEmpId()+"'";
		return template.update(sql);
	}
	
	
	///ASSIGNING
	
	public int updatestatus2(SchedDays d) 
	{
		String sql = "UPDATE REF_SCHEDULE SET ISASSIGNED ='"+ d.getStatus()+ "', DATE_ASSIGNED = GetDate() where EMP_ID = '"+d.getEmpId()+"'";
		return template.update(sql);
	}
	
	
	public List<SchedDays> getPendingSched(){ 
		return template.query(" SELECT DISTINCT E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME AS FNAME, convert(varchar(19),cast(CAST(ST2.START_TIME AS DATETIME) as time),100)+' - '+ convert(varchar(19),cast(CAST(ST2.END_TIME AS DATETIME) as time),100) AS TIMEWORK\r\n" + 
				"				, RS2.SCHED_STATUS, STUFF(( SELECT ', ' + SD.SCHED_DAYS AS [text()] FROM TBL_EMPLOYEE E INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID \r\n" + 
				"				 INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID \r\n" + 
				"				 INNER JOIN TBL_SHIFT ST ON ST.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"				 WHERE E2.EMP_ID = E.EMP_ID ORDER BY E.EMP_ID FOR XML PATH('')),1,1,'') AS WORKING_DAYS\r\n" + 
				"				 FROM TBL_EMPLOYEE E2 INNER JOIN REF_EMP_JOB RE2 ON E2.EMP_ID = RE2.EMP_ID INNER JOIN REF_SCHEDULE RS2 ON E2.EMP_ID = RS2.EMP_ID\r\n" + 
				"				 INNER JOIN TBL_SCHED_DAYS SD2 ON SD2.SCHED_DAYS_ID = RS2.SCHED_DAYS_ID INNER JOIN TBL_SHIFT ST2 ON ST2.SHIFT_ID = RS2.SHIFT_ID\r\n" + 
				"				 WHERE RS2.SCHED_STATUS ='PENDING'\r\n" + 
				"				 GROUP BY E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME, convert(varchar(19),cast(CAST(ST2.START_TIME AS DATETIME) as time),100)+' - '+ convert(varchar(19),cast(CAST(ST2.END_TIME AS DATETIME) as time),100), RS2.SCHED_STATUS", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setWorkingDays(rs.getString(5));
				e.setShiftTime(rs.getString(3));
				e.setSchedStatus(rs.getString(4));
			return e;
		}
		
	});
}
	
	
	public List<SchedDays> getPendingSched2(){ 
		return template.query("\r\n" + 
				"SELECT DISTINCT E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME AS FNAME, convert(varchar(19),cast(CAST(ST2.START_TIME AS DATETIME) as time),100)+' - '+ convert(varchar(19),cast(CAST(ST2.END_TIME AS DATETIME) as time),100) AS TIMEWORK\r\n" + 
				"				, CONVERT(NVARCHAR(100),RS2.DATE_APPROVED, 107) AS DATE_EVAL, RS2.SCHED_STATUS,  STUFF(( SELECT ', ' + SD.SCHED_DAYS AS [text()] FROM TBL_EMPLOYEE E INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"				 INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"				 INNER JOIN TBL_SHIFT ST ON ST.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"				 WHERE E2.EMP_ID = E.EMP_ID ORDER BY E.EMP_ID FOR XML PATH('')),1,1,'') AS WORKING_DAYS\r\n" + 
				"				 FROM TBL_EMPLOYEE E2 INNER JOIN REF_EMP_JOB RE2 ON E2.EMP_ID = RE2.EMP_ID INNER JOIN REF_SCHEDULE RS2 ON E2.EMP_ID = RS2.EMP_ID\r\n" + 
				"				 INNER JOIN TBL_SCHED_DAYS SD2 ON SD2.SCHED_DAYS_ID = RS2.SCHED_DAYS_ID INNER JOIN TBL_SHIFT ST2 ON ST2.SHIFT_ID = RS2.SHIFT_ID\r\n" + 
				"				 WHERE RS2.SCHED_STATUS !='PENDING'\r\n" + 
				"				 GROUP BY E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME,  convert(varchar(19),cast(CAST(ST2.START_TIME AS DATETIME) as time),100)+' - '+ convert(varchar(19),cast(CAST(ST2.END_TIME AS DATETIME) as time),100), RS2.SCHED_STATUS, RS2.DATE_APPROVED\r\n" + 
				"			", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setWorkingDays(rs.getString(6));
				e.setShiftTime(rs.getString(3));
				e.setDateEval(rs.getString(4));
				e.setSchedStatus(rs.getString(5));
			return e;
		}
		
	});
}
	
	public List<SchedDays> getApprovedSched(){ 
		return template.query(" SELECT DISTINCT E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME AS FNAME, J2.JOB_NAME, D2.DEPT_NAME, convert(varchar(19),cast(CAST(ST2.START_TIME AS DATETIME) as time),100)+' - '+ \r\n" + 
				"					convert(varchar(19),cast(CAST(ST2.END_TIME AS DATETIME) as time),100) AS TIMEWORK\r\n" + 
				"					, CONVERT(NVARCHAR(100),RS2.DATE_ASSIGNED, 107) AS ASSIGNED_DATE ,STUFF(( SELECT ', ' + SD.SCHED_DAYS AS [text()]\r\n" + 
				"					FROM TBL_EMPLOYEE E\r\n" + 
				"					INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"					INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID \r\n" + 
				"					INNER JOIN TBL_DEPARTMENT D ON D.DEPT_ID = J.DEPT_ID \r\n" + 
				"					INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"					INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"					INNER JOIN TBL_SHIFT ST ON ST.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"					WHERE E2.EMP_ID = E.EMP_ID\r\n" + 
				"					ORDER BY E.EMP_ID\r\n" + 
				"					FOR XML PATH('')),1,1,'') AS WORKING_DAYS\r\n" + 
				"					FROM TBL_EMPLOYEE E2\r\n" + 
				"					INNER JOIN REF_EMP_JOB RE2 ON E2.EMP_ID = RE2.EMP_ID\r\n" + 
				"					INNER JOIN TBL_JOB J2 ON J2.JOB_ID = RE2.JOB_ID \r\n" + 
				"					INNER JOIN TBL_DEPARTMENT D2 ON D2.DEPT_ID = J2.DEPT_ID\r\n" + 
				"					INNER JOIN REF_SCHEDULE RS2 ON E2.EMP_ID = RS2.EMP_ID\r\n" + 
				"					INNER JOIN TBL_SCHED_DAYS SD2 ON SD2.SCHED_DAYS_ID = RS2.SCHED_DAYS_ID\r\n" + 
				"					INNER JOIN TBL_SHIFT ST2 ON ST2.SHIFT_ID = RS2.SHIFT_ID\r\n" + 
				"					WHERE RS2.SCHED_STATUS ='APPROVED' AND RS2.ISASSIGNED = 'TRUE'\r\n" + 
				"					GROUP BY E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME, J2.JOB_NAME, D2.DEPT_NAME, ST2.START_TIME, ST2.END_TIME, RS2.DATE_ASSIGNED", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setJobName(rs.getString(3));
				e.setDeptName(rs.getString(4));
				e.setWorkingDays(rs.getString(7));
				e.setShiftTime(rs.getString(5));
				e.setDateAssigned(rs.getString(6));
			return e;
		}
		
	});
}
	
	

	public List<SchedDays> getApproved(){ 
		return template.query("SELECT DISTINCT E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME AS FNAME, J2.JOB_NAME, D2.DEPT_NAME,\r\n" + 
				"			convert(varchar(19),cast(CAST(ST2.START_TIME AS DATETIME) as time),100)+' - '+ \r\n" + 
				"			convert(varchar(19),cast(CAST(ST2.END_TIME AS DATETIME) as time),100) AS TIMEWORK, STUFF(( SELECT ', ' + SD.SCHED_DAYS AS [text()]\r\n" + 
				"			\r\n" + 
				"			FROM TBL_EMPLOYEE E\r\n" + 
				"			INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"			INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID \r\n" + 
				"			INNER JOIN TBL_DEPARTMENT D ON D.DEPT_ID = J.DEPT_ID\r\n" + 
				"			LEFT JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"			INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"			INNER JOIN TBL_SHIFT ST ON ST.SHIFT_ID = RS.SHIFT_ID \r\n" + 
				"			WHERE E2.EMP_ID = E.EMP_ID\r\n" + 
				"			ORDER BY E.EMP_ID\r\n" + 
				"			FOR XML PATH('')),1,1,'') AS WORKING_DAYS\r\n" + 
				"			\r\n" + 
				"			FROM TBL_EMPLOYEE E2\r\n" + 
				"			INNER JOIN REF_EMP_JOB RE2 ON E2.EMP_ID = RE2.EMP_ID\r\n" + 
				"			INNER JOIN TBL_JOB J2 ON J2.JOB_ID = RE2.JOB_ID\r\n" + 
				"			INNER JOIN TBL_DEPARTMENT D2 ON D2.DEPT_ID = J2.DEPT_ID\r\n" + 
				"			LEFT JOIN REF_SCHEDULE RS2 ON E2.EMP_ID = RS2.EMP_ID\r\n" + 
				"			INNER JOIN TBL_SCHED_DAYS SD2 ON SD2.SCHED_DAYS_ID = RS2.SCHED_DAYS_ID\r\n" + 
				"			INNER JOIN TBL_SHIFT ST2 ON ST2.SHIFT_ID = RS2.SHIFT_ID \r\n" + 
				"			\r\n" + 
				"			WHERE RS2.SCHED_STATUS ='APPROVED' AND RS2.ISASSIGNED IS NULL\r\n" + 
				"			GROUP BY E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME, J2.JOB_NAME, D2.DEPT_NAME, ST2.START_TIME, ST2.END_TIME\r\n" + 
				"				", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setJobName(rs.getString(3));
				e.setDeptName(rs.getString(4));
				e.setWorkingDays(rs.getString(6));
				e.setShiftTime(rs.getString(5));
			return e;
		}
		
	});
}
	
	
	
	public List<SchedDays> getApprovedList(){ 
		return template.query(" SELECT DISTINCT E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME AS FNAME, J2.JOB_NAME, D2.DEPT_NAME, convert(varchar(19),cast(CAST(ST2.START_TIME AS DATETIME) as time),100)+' - '+ \r\n" + 
				"					convert(varchar(19),cast(CAST(ST2.END_TIME AS DATETIME) as time),100) AS TIMEWORK\r\n" + 
				"					, CONVERT(NVARCHAR(100),RS2.DATE_ASSIGNED, 107) AS ASSIGNED_DATE ,STUFF(( SELECT ', ' + SD.SCHED_DAYS AS [text()]\r\n" + 
				"					FROM TBL_EMPLOYEE E\r\n" + 
				"					INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"					INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID \r\n" + 
				"					INNER JOIN TBL_DEPARTMENT D ON D.DEPT_ID = J.DEPT_ID \r\n" + 
				"					INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"					INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"					INNER JOIN TBL_SHIFT ST ON ST.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"					WHERE E2.EMP_ID = E.EMP_ID\r\n" + 
				"					ORDER BY E.EMP_ID\r\n" + 
				"					FOR XML PATH('')),1,1,'') AS WORKING_DAYS\r\n" + 
				"					FROM TBL_EMPLOYEE E2\r\n" + 
				"					INNER JOIN REF_EMP_JOB RE2 ON E2.EMP_ID = RE2.EMP_ID\r\n" + 
				"					INNER JOIN TBL_JOB J2 ON J2.JOB_ID = RE2.JOB_ID \r\n" + 
				"					INNER JOIN TBL_DEPARTMENT D2 ON D2.DEPT_ID = J2.DEPT_ID\r\n" + 
				"					INNER JOIN REF_SCHEDULE RS2 ON E2.EMP_ID = RS2.EMP_ID\r\n" + 
				"					INNER JOIN TBL_SCHED_DAYS SD2 ON SD2.SCHED_DAYS_ID = RS2.SCHED_DAYS_ID\r\n" + 
				"					INNER JOIN TBL_SHIFT ST2 ON ST2.SHIFT_ID = RS2.SHIFT_ID\r\n" + 
				"					WHERE RS2.SCHED_STATUS ='APPROVED' AND RS2.ISASSIGNED = 'TRUE'\r\n" + 
				"					GROUP BY E2.EMP_ID, E2.EMP_FIRST_NAME+' '+E2.EMP_LAST_NAME, J2.JOB_NAME, D2.DEPT_NAME, ST2.START_TIME, ST2.END_TIME, RS2.DATE_ASSIGNED", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setJobName(rs.getString(3));
				e.setDeptName(rs.getString(4));
				e.setWorkingDays(rs.getString(7));
				e.setShiftTime(rs.getString(5));
				e.setDateAssigned(rs.getString(6));
			return e;
		}
		
	});
}
	
}
