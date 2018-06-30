package erp.hrms.dao;

import java.sql.*;
import java.util.*;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.jdbc.core.JdbcTemplate;
import erp.hrms.beans.LeaveSetupBean;

public class LeaveSetupDao {

	public JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//ADD
	public int addLeave(LeaveSetupBean b) {
		String sql = "INSERT INTO tbl_leave(lve_name, lve_code, lve_type, lve_role, lve_location, lve_gender, lve_marital, lve_period, accrue_date, lve_count, isAccrualReset, apply_before, maxConsecutive, isConsiderDate, new_probation_period, new_waiting_period, new_initial_value, isAdminAssign, isBeyondLimit, isCarryForward, cf_max, cf_lifetime, isCarryExceed)  VALUES ('" + b.getLeaveName() + "','" + b.getLeaveCode() + "','" + b.getLeaveType() + "','" + b.getLeaveRoleID() + "','" + b.getLeaveLocationID() + "','" + b.getLeaveGender() + "','" + b.getLeaveMarital() + "','" + b.getLeavePeriod() + "','" + b.getLeaveAccrue() + "','" + b.getLeaveCount() + "','" + b.isLeaveReset() + "','" + b.getLeaveApply() + "','" + b.getLeaveMaxCon() + "','" + b.isLeaveJoin() + "','" + b.getLeaveProbation() + "','" + b.getLeaveWaiting() + "','" + b.getLeaveInitial() + "','" + b.isLeaveAdmin() + "','" + b.isLeaveBal() + "','" + b.isLeaveCF() + "','" + b.getLeaveMaxCF() + "','" + b.getLeaveLifetime() + "','" + b.isLeaveExceed() + "')";
				
		return template.update(sql);
	}
	
	//DELETE
	public int deleteLeave(int id) {
		String sql = "DELETE FROM TBL_LEAVE WHERE LVE_ID='" + id + "'";					
		return template.update(sql);
	}
	
	//UPDATE
	public int updateLeave(LeaveSetupBean b) {
		String sql = "UPDATE TBL_LEAVE SET lve_name='" + b.getLeaveName() + "', '" + "lve_code='";					
		return template.update(sql);
	}
	
	//VIEW FOR LEAVE
	public List<LeaveSetupBean> viewLeave()
	{
		return template.query("SELECT L.lve_id, L.lve_name, L.lve_code, L.lve_type, L.lve_role, J.job_name, L.lve_location, D.dept_name, L.lve_gender, L.lve_marital, L.lve_count \r\n" + 
				"	FROM tbl_leave AS L \r\n" + 
				"	INNER JOIN tbl_job AS J ON J.JOB_ID = L.LVE_ROLE\r\n" + 
				"	INNER JOIN tbl_department AS D ON J.DEPT_ID = L.LVE_LOCATION", new RowMapper<LeaveSetupBean>() 
		{
			public LeaveSetupBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveSetupBean lve = new LeaveSetupBean();
				lve.setLeaveID(rs.getInt("lve_id"));
				lve.setLeaveName(rs.getString("lve_name"));
				lve.setLeaveCode(rs.getString("lve_code"));
				lve.setLeaveType(rs.getString("lve_type"));
				lve.setLeaveRole(rs.getString("lve_role"));
				lve.setLeaveLocation(rs.getString("lve_location"));
				lve.setLeaveGender(rs.getString("lve_gender"));
				lve.setLeaveMarital(rs.getString("lve_marital"));
//				lve.setLeavePeriod(rs.getString("lve_period"));
//				lve.setLeaveAccrue(rs.getString("accrue_date"));
				lve.setLeaveCount(rs.getInt("lve_count"));
//				lve.setLeaveReset(rs.getBoolean("isaccrualreset"));
//				lve.setLeaveApply(rs.getInt("apply_before"));
//				lve.setLeaveMaxCon(rs.getInt("maxconsecutive"));
//				lve.setLeaveJoin(rs.getBoolean("isconsiderdate"));
//				lve.setLeaveProbation(rs.getString("new_probation_period"));
//				lve.setLeaveWaiting(rs.getInt("new_waiting_period"));
//				lve.setLeaveInitial(rs.getInt("new_initial_value"));
//				lve.setLeaveAdmin(rs.getBoolean("isadminassign"));
//				lve.setLeaveExceed(rs.getBoolean("isbeyondlimit"));
//				lve.setLeaveCF(rs.getBoolean("iscarryforward"));
//				lve.setLeaveMaxCF(rs.getInt("cf_max"));
//				lve.setLeaveLifetime(rs.getInt("cf_lifetime"));
//				lve.setLeaveExceed(rs.getBoolean("iscarryexceed"));
					
				return lve;
				}
		});
	}
	
	public List<LeaveSetupBean> listJob()
	{
		return template.query("SELECT job_id, job_name FROM tbl_job", new RowMapper<LeaveSetupBean>() 
		{
			public LeaveSetupBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveSetupBean lve = new LeaveSetupBean();
				lve.setJobID(rs.getInt("job_id"));
				lve.setJobName(rs.getString("job_name"));
				return lve;
				}
		});
	}
	
	public List<LeaveSetupBean> listDept()
	{
		return template.query("SELECT dept_id, dept_name FROM tbl_department", new RowMapper<LeaveSetupBean>() 
		{
			public LeaveSetupBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveSetupBean lve = new LeaveSetupBean();
				lve.setDeptID(rs.getInt("dept_id"));
				lve.setDeptName(rs.getString("dept_name"));
				return lve;
				}
		});
	}

}
