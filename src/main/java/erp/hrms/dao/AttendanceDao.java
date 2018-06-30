package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.controllers.AttendanceController;
import erp.hrms.beans.AttendanceBeans;
import erp.hrms.beans.LoginBean;

public class AttendanceDao {
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	@Autowired
	LoginDao loginDao;

	@Autowired
	AttendanceController attendanceController;
	
	AttendanceBeans b = new AttendanceBeans();
	public String name = "";
	public int id = 0;
	
	// RETRIEVE USERNAME, PASSWORD, USER ROLE
	public List<AttendanceBeans> getEmpAtt()
	{	
		return template.query("SELECT emp_number, emp_password, (emp_first_name + ' ' + emp_last_name) AS emp_name, emp_id FROM tbl_employee WHERE emp_number='" + attendanceController.usern + "' AND emp_password='" + attendanceController.passw + "'", new RowMapper<AttendanceBeans>()
		{			
			public AttendanceBeans mapRow(ResultSet rs, int row) throws SQLException {
			name = b.setEmp_name(rs.getString("emp_name"));
			id = b.setEmp_id(rs.getInt("emp_id"));
			return b;
			}
		});
	}
	
	public int save(int userID) {	
		String sql ="INSERT INTO tbl_time_attendance(td_entry_date, td_time_in, emp_id) VALUES (GETDATE(),GETDATE(),'" + userID + "')";
		return template.update(sql);
	}
	
	public int update(int userID) {
		String sql ="UPDATE tbl_time_attendance SET td_time_out = GETDATE() WHERE emp_id='" + userID + "' AND TD_ENTRY_DATE = CONVERT(DATE, GETDATE())";
		return template.update(sql);
	}
	
	public List<AttendanceBeans> getEmpAttendance(){
		return template.query("SELECT DISTINCT td_Entry_Date, convert(varchar(19), cast(td_time_in as time), 100) as 'Time_IN', convert(varchar(19), cast(td_time_out as time), 100) as 'Time_OUT' FROM TBL_TIME_ATTENDANCE WHERE emp_id='" + loginDao.id + "'", new RowMapper<AttendanceBeans>() {
			public AttendanceBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				AttendanceBeans e = new AttendanceBeans();
				e.setTd_Entry_Date(rs.getString(1));
				e.setTd_time_in(rs.getString(2));
				e.setTd_time_out(rs.getString(3));
						
				return e;
			}		
		});		
	}	

}
