package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.LoginBean;
import erp.controllers.ErpController;

public class LoginDao {	
public JdbcTemplate template;
public String role = "", un="", pw="", name="", dept="";
public String appRole = "", appName="";
public int id = 0, appID = 0;
LoginBean b = new LoginBean();
	
@Autowired
LoginDao loginDao; 

@Autowired
ErpController erpControl;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	// RETRIEVE USERNAME, PASSWORD, USER ROLE
	public List<LoginBean> getLogin()
	{	
		return template.query("SELECT E.emp_number, E.emp_password, R.role_name, D.dept_name, (E.emp_first_name + ' ' + E.emp_last_name) AS emp_name, E.emp_id\r\n" + 
				"	FROM tbl_employee AS E \r\n" + 
				"	INNER JOIN tbl_user_role AS R ON E.user_role_id = R.user_role_id \r\n" + 
				"	INNER JOIN ref_emp_job AS EJ ON E.emp_id = EJ.EMP_ID\r\n" + 
				"	INNER JOIN tbl_job AS J ON EJ.JOB_ID = J.JOB_ID\r\n" + 
				"	INNER JOIN tbl_department AS D ON J.DEPT_ID = D.DEPT_ID\r\n" +
				" WHERE E.emp_number='" + erpControl.usern + "' AND E.emp_password='" + erpControl.passw + "'", new RowMapper<LoginBean>()
		{			
			public LoginBean mapRow(ResultSet rs, int row) throws SQLException {
			b.setCur_un(rs.getString("emp_number"));
			b.setCur_pw(rs.getString("emp_password"));
			role = b.setCur_role(rs.getString("role_name"));
			name = b.setCur_name(rs.getString("emp_name"));
			id = b.setCur_id(rs.getInt("emp_id"));
			dept = b.setCur_dept(rs.getString("dept_name"));
			return b;
			}
		});
	}
	
	public List<LoginBean> getLoginApp()
	{	
		return template.query("SELECT A.app_username, A.app_password, R.role_name, (A.app_fname + ' ' + A.app_lname) AS app_name, A.app_id  FROM tbl_applicant AS A INNER JOIN tbl_user_role AS R ON A.user_role_id = R.user_role_id WHERE A.app_username='" + erpControl.usern + "' AND A.app_password='" + erpControl.passw + "'", new RowMapper<LoginBean>()
		{			
			public LoginBean mapRow(ResultSet rs, int row) throws SQLException {		
			appRole = b.setCur_role(rs.getString("role_name"));
			appName = b.setCur_name(rs.getString("app_name"));
			appID = b.setCur_id(rs.getInt("app_id"));
			return b;
			}
		});
	}
}
