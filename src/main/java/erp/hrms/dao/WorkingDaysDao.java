package erp.hrms.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.SchedDays;
import erp.hrms.beans.Shift;

public class WorkingDaysDao {
	
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	
	//view Monday
	public List<SchedDays> getMondays(){
		return template.query(" Select DISTINCT E.EMP_ID,  E.EMP_FIRST_NAME+' '+E.EMP_LAST_NAME AS FNAME,\r\n" + 
				"		convert(varchar(19),cast(CAST([START_TIME] AS DATETIME) as time),100) +' - '+ \r\n" + 
				"		convert(varchar(19),cast(CAST([END_TIME] AS DATETIME) as time),100) AS STIME\r\n" + 
				"\r\n" + 
				"from TBL_EMPLOYEE E\r\n" + 
				"INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID\r\n" + 
				"INNER JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"WHERE SCHED_DAYS = 'Monday' AND RS.ISASSIGNED='TRUE'", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setShiftTime(rs.getString(3));
				return e;
			}
			
		});
	
	}
	
	//view Monday
	public List<SchedDays> getTuesdays(){
		return template.query(" Select DISTINCT E.EMP_ID, E.EMP_FIRST_NAME+' '+E.EMP_LAST_NAME AS FNAME,\r\n" + 
				"		convert(varchar(19),cast(CAST([START_TIME] AS DATETIME) as time),100) +' - '+ \r\n" + 
				"		convert(varchar(19),cast(CAST([END_TIME] AS DATETIME) as time),100) AS STIME\r\n" + 
				"\r\n" + 
				"from TBL_EMPLOYEE E\r\n" + 
				"INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID\r\n" + 
				"INNER JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"WHERE SCHED_DAYS = 'Tuesday' AND RS.ISASSIGNED='TRUE'", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setShiftTime(rs.getString(3));
				return e;
			}
			
		});
	
	}
	
	
	//view Monday
	public List<SchedDays> getWednesdays(){
		return template.query(" Select DISTINCT E.EMP_ID,  E.EMP_FIRST_NAME+' '+E.EMP_LAST_NAME AS FNAME,\r\n" + 
				"		convert(varchar(19),cast(CAST([START_TIME] AS DATETIME) as time),100) +' - '+ \r\n" + 
				"		convert(varchar(19),cast(CAST([END_TIME] AS DATETIME) as time),100) AS STIME\r\n" + 
				"\r\n" + 
				"from TBL_EMPLOYEE E\r\n" + 
				"INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID\r\n" + 
				"INNER JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"WHERE SCHED_DAYS = 'Wednesday' AND RS.ISASSIGNED='TRUE'", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setShiftTime(rs.getString(3));
				return e;
			}
			
		});
	
	}
	
	
	//view Monday
	public List<SchedDays> getThursdays(){
		return template.query(" Select DISTINCT E.EMP_ID,  E.EMP_FIRST_NAME+' '+E.EMP_LAST_NAME AS FNAME,\r\n" + 
				"		convert(varchar(19),cast(CAST([START_TIME] AS DATETIME) as time),100) +' - '+ \r\n" + 
				"		convert(varchar(19),cast(CAST([END_TIME] AS DATETIME) as time),100) AS STIME\r\n" + 
				"\r\n" + 
				"from TBL_EMPLOYEE E\r\n" + 
				"INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID\r\n" + 
				"INNER JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"WHERE SCHED_DAYS = 'Thursday' AND RS.ISASSIGNED='TRUE'", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setShiftTime(rs.getString(3));
				return e;
			}
			
		});
	
	}
	
	
	//view Monday
	public List<SchedDays> getFridays(){
		return template.query(" Select DISTINCT E.EMP_ID,  E.EMP_FIRST_NAME+' '+E.EMP_LAST_NAME AS FNAME,\r\n" + 
				"		convert(varchar(19),cast(CAST([START_TIME] AS DATETIME) as time),100) +' - '+ \r\n" + 
				"		convert(varchar(19),cast(CAST([END_TIME] AS DATETIME) as time),100) AS STIME\r\n" + 
				"\r\n" + 
				"from TBL_EMPLOYEE E\r\n" + 
				"INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
				"INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
				"INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID\r\n" + 
				"INNER JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
				"INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
				"WHERE SCHED_DAYS = 'Friday' AND RS.ISASSIGNED='TRUE'", new RowMapper<SchedDays>() {
			public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				SchedDays e = new SchedDays();
				e.setEmpId(rs.getInt(1));
				e.setEmpName(rs.getString(2));
				e.setShiftTime(rs.getString(3));
				return e;
			}
			
		});
	
	}
	
	//view Monday
		public List<SchedDays> getSaturdays(){
			return template.query(" Select DISTINCT E.EMP_ID,  E.EMP_FIRST_NAME+' '+E.EMP_LAST_NAME AS FNAME,\r\n" + 
					"		convert(varchar(19),cast(CAST([START_TIME] AS DATETIME) as time),100) +' - '+ \r\n" + 
					"		convert(varchar(19),cast(CAST([END_TIME] AS DATETIME) as time),100) AS STIME\r\n" + 
					"\r\n" + 
					"from TBL_EMPLOYEE E\r\n" + 
					"INNER JOIN REF_SCHEDULE RS ON E.EMP_ID = RS.EMP_ID\r\n" + 
					"INNER JOIN REF_EMP_JOB RE ON E.EMP_ID = RE.EMP_ID\r\n" + 
					"INNER JOIN TBL_JOB J ON J.JOB_ID = RE.JOB_ID\r\n" + 
					"INNER JOIN TBL_SHIFT S ON S.SHIFT_ID = RS.SHIFT_ID\r\n" + 
					"INNER JOIN TBL_SCHED_DAYS SD ON SD.SCHED_DAYS_ID = RS.SCHED_DAYS_ID\r\n" + 
					"WHERE SCHED_DAYS = 'Saturday' AND RS.ISASSIGNED='TRUE'" , new RowMapper<SchedDays>() {
				public SchedDays mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					SchedDays e = new SchedDays();
					e.setEmpId(rs.getInt(1));
					e.setEmpName(rs.getString(2));
					e.setShiftTime(rs.getString(3));
					return e;
				}
				
			});
		
		}
}
