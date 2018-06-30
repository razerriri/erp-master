package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.EmployeeBeans;
import erp.hrms.beans.SchedDays;

public class RequestDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	
}
	

	
		public List<EmployeeBeans> getEmployee(){
		return template.query("SELECT e.emp_id,fname + ' ' + lname as 'Name', job_name AS 'Job', dept_name as 'Dept' from ref_employee_job r INNER JOIN tbl_EMPLOYEE e on r.emp_id = e.emp_id INNER JOIN tbl_job j on r.job_id = j.job_id inner join tbl_department d on j.dept_id = d.dept_id", new RowMapper<EmployeeBeans>() {

			public EmployeeBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				EmployeeBeans e = new EmployeeBeans();
				e.setEmp_id(rs.getInt(1));
				e.setEmp_name(rs.getString(2));
				e.setJob_name(rs.getString(3));
				e.setDept_name(rs.getString(4));
				
				return e;
			}
			
		});
	
	}
}
		
		
