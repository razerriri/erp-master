package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.LeaveRequestBean;
import erp.hrms.dao.LoginDao;

public class LeaveRequestDao {

	public JdbcTemplate template;
	
	@Autowired
	LoginDao loginDao;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	// ADD LEAVE REQUEST	
	public boolean addLeaveReq(LeaveRequestBean b[]) {
		String sql = "INSERT INTO tbl_leave_req(emp_id, lve_file_date, lve_type, lve_start_date, lve_end_date, lve_no_of_days, lve_reason, lve_remarks, lve_status) VALUES('" + loginDao.id +"', ?, ?, ?, ?, ?, ?, ?, ?)";
		template.update(sql, new Object[] {b[0].getLeaveFile(), b[0].getLeaveTypeID(), b[0].getLeaveStart(), b[0].getLeaveEnd(), b[0].getLeaveDays(), b[0].getLeaveReason(), b[0].getLeaveRemarks(), b[0].getLeaveStatus()});
		return true;
	}
	
	// UPDATE LEAVE BALANCE AFTER LEAVE REQUEST APPROVAL
	public int updateLeaveBal(LeaveRequestBean b) {
		String sql = "UPDATE TBL_EMP_LEAVE SET lve_bal = (lve_bal-'" + b.getLeaveDays() + "') WHERE lve_id ='" + b.getLeaveTypeID() + "' AND emp_id ='" + b.getReqEmpID() + "'";
		return template.update(sql);
	}
	
	// APPROVAL LEAVE REQUEST
	public int updateLeaveReq(LeaveRequestBean b) {
		String sql = "UPDATE tbl_leave_req SET lve_status='" + b.getLeaveStatus() + "' WHERE lve_req_id='" + b.getEmpLeaveReqID() + "'";
		return template.update(sql);
	}
	
	// DELETE LEAVE REQUEST
	public int deleteRequest(int id) {
		String sql="DELETE FROM TBL_LEAVE_REQ WHERE lve_req_id='" + id + "'";
		return template.update(sql);
	}
	
	// TABLE VIEW FOR LEAVE REQUEST DEPTHEAD
	public List<LeaveRequestBean> viewRequest()
	{
		return template.query("SELECT LR.lve_req_id, LR.lve_file_date, LR.emp_id, (E.emp_first_name + ' ' + E.emp_last_name) AS emp_name, LR.LVE_TYPE, L.lve_name, LR.lve_start_date, LR.lve_end_date, LR.lve_no_of_days, LR.lve_reason, LR.lve_remarks, LR.lve_status \r\n" + 
				"FROM tbl_leave_req AS LR \r\n" + 
				"	INNER JOIN tbl_leave AS L ON LR.lve_type = L.lve_id\r\n" + 
				"	INNER JOIN tbl_employee AS E ON LR.EMP_ID = E.EMP_ID", new RowMapper<LeaveRequestBean>() 
		{
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveRequestBean req = new LeaveRequestBean();
				req.setEmpLeaveReqID(rs.getInt("lve_req_id"));
				req.setLeaveFile(rs.getString("lve_file_date"));
				req.setReqEmpID(rs.getInt("emp_id"));
				req.setReqEmpName(rs.getString("emp_name"));
				req.setLeaveTypeID(rs.getInt("lve_type"));
				req.setLeaveTypeName(rs.getString("lve_name"));
				req.setLeaveStart(rs.getString("lve_start_date"));
				req.setLeaveEnd(rs.getString("lve_end_date"));
				req.setLeaveDays(rs.getInt("lve_no_of_days"));
				req.setLeaveReason(rs.getString("lve_reason"));
				req.setLeaveRemarks(rs.getString("lve_remarks"));
				req.setLeaveStatus(rs.getString("lve_status"));
				return req;
				}
		});
	}
	
	// TABLE VIEW FOR LEAVE REQUEST EMPLOYEE
		public List<LeaveRequestBean> viewEmpRequest()
		{
			return template.query("SELECT LR.lve_req_id, LR.lve_file_date, LR.emp_id, (E.emp_first_name + ' ' + E.emp_last_name) AS emp_name, LR.LVE_TYPE, L.lve_name, LR.lve_start_date, LR.lve_end_date, LR.lve_no_of_days, LR.lve_reason, LR.lve_remarks, LR.lve_status\r\n" + 
					"FROM tbl_leave_req AS LR\r\n" + 
					"	INNER JOIN tbl_leave AS L ON LR.lve_type = L.lve_id\r\n" + 
					"	INNER JOIN tbl_employee AS E ON LR.EMP_ID = E.EMP_ID\r\n" + 
					"WHERE LR.emp_id='" + loginDao.id + "'", new RowMapper<LeaveRequestBean>() 
			{
				public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException{
					LeaveRequestBean req = new LeaveRequestBean();
					req.setEmpLeaveReqID(rs.getInt("lve_req_id"));
					req.setLeaveFile(rs.getString("lve_file_date"));
					req.setReqEmpID(rs.getInt("emp_id"));
					req.setReqEmpName(rs.getString("emp_name"));
					req.setLeaveTypeID(rs.getInt("lve_type"));
					req.setLeaveTypeName(rs.getString("lve_name"));
					req.setLeaveStart(rs.getString("lve_start_date"));
					req.setLeaveEnd(rs.getString("lve_end_date"));
					req.setLeaveDays(rs.getInt("lve_no_of_days"));
					req.setLeaveReason(rs.getString("lve_reason"));
					req.setLeaveRemarks(rs.getString("lve_remarks"));
					req.setLeaveStatus(rs.getString("lve_status"));
					return req;
					}
			});
		}
	
	// LIST EMPLOYEE
	 public List<LeaveRequestBean> dropdownEmp() {
		String sql = "SELECT emp_id, (emp_first_name + ' ' + emp_last_name) AS emp_name FROM tbl_employee";
		return template.query(sql, new RowMapper<LeaveRequestBean>() {
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException {
				LeaveRequestBean emp = new LeaveRequestBean();
				emp.setEmpID(rs.getInt("emp_id"));
				emp.setEmpName(rs.getString("emp_name"));
				return emp;
			}

		});
	 }
	
	// LIST LEAVE TYPE
	 public List<LeaveRequestBean> dropdownLeave() {
			String sql = "SELECT lve_id, lve_name FROM tbl_leave";
			return template.query(sql, new RowMapper<LeaveRequestBean>() {
				public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException {
					LeaveRequestBean lve = new LeaveRequestBean();
					lve.setLeaveID(rs.getInt("lve_id"));
					lve.setLeaveName(rs.getString("lve_name"));
				
					return lve;
				}

			});
		 }
	 
	 
	// TABLE VIEW FOR LEAVE BALANCE
	public List<LeaveRequestBean> viewBalance()
	{
		return template.query("SELECT LB.lve_id, LB.lve_bal, L.lve_name\r\n" + 
				"	FROM tbl_emp_leave AS LB\r\n" + 
				"	INNER JOIN tbl_leave as L ON LB.lve_id = L.lve_id\r\n" + 
				"	WHERE LB.emp_id ='" + loginDao.id + "'", new RowMapper<LeaveRequestBean>() 
		{
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveRequestBean bal = new LeaveRequestBean();
				bal.setBalLeaveID(rs.getInt("lve_id"));
				bal.setBalLeaveName(rs.getString("lve_name"));
				bal.setBalance(rs.getString("lve_bal"));
				
				return bal;
				}
		});
	}
	
	// LIST LEAVE TYPE
	 public List<LeaveRequestBean> listToday() {
			String sql = "SELECT (E.EMP_FIRST_NAME + ' ' + E.EMP_LAST_NAME) AS EMP_NAME, L.LVE_START_DATE, L.LVE_END_DATE FROM TBL_LEAVE_REQ AS L INNER JOIN TBL_EMPLOYEE AS E ON L.EMP_ID = E.EMP_ID WHERE L.LVE_START_DATE = CONVERT(DATE, GETDATE()) AND L.LVE_STATUS = 'Approved'";
			return template.query(sql, new RowMapper<LeaveRequestBean>() {
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException {
				LeaveRequestBean lve = new LeaveRequestBean();
				lve.setDayEmp(rs.getString("emp_name"));
				lve.setDayStart(rs.getString("lve_start_date"));
				lve.setDayEnd(rs.getString("lve_end_date"));
				return lve;
			}
	
		});
	 }
	 
	 public List<LeaveRequestBean> listTomorrow() {
			String sql = "SELECT (E.EMP_FIRST_NAME + ' ' + E.EMP_LAST_NAME) AS EMP_NAME, L.LVE_START_DATE, L.LVE_END_DATE FROM TBL_LEAVE_REQ AS L INNER JOIN TBL_EMPLOYEE AS E ON L.EMP_ID = E.EMP_ID WHERE L.LVE_START_DATE = CONVERT(DATE, GETDATE() + 1) AND L.LVE_STATUS = 'Approved'";
			return template.query(sql, new RowMapper<LeaveRequestBean>() {
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException {
				LeaveRequestBean lve = new LeaveRequestBean();
				lve.setDayEmp(rs.getString("emp_name"));
				lve.setDayStart(rs.getString("lve_start_date"));
				lve.setDayEnd(rs.getString("lve_end_date"));
				return lve;
			}
	
		});
	 }
	 
	 public List<LeaveRequestBean> listNext() {
			String sql = "SELECT (E.EMP_FIRST_NAME + ' ' + E.EMP_LAST_NAME) AS EMP_NAME, L.LVE_START_DATE, L.LVE_END_DATE FROM TBL_LEAVE_REQ AS L INNER JOIN TBL_EMPLOYEE AS E ON L.EMP_ID = E.EMP_ID WHERE L.LVE_START_DATE = CONVERT(DATE, GETDATE() + 2) AND L.LVE_STATUS = 'Approved'";
			return template.query(sql, new RowMapper<LeaveRequestBean>() {
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException {
				LeaveRequestBean lve = new LeaveRequestBean();
				lve.setDayEmp(rs.getString("emp_name"));
				lve.setDayStart(rs.getString("lve_start_date"));
				lve.setDayEnd(rs.getString("lve_end_date"));
				return lve;
			}
	
		});
	 }

}
