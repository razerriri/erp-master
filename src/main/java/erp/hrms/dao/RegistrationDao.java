package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import erp.hrms.beans.Registration;

public class RegistrationDao {
JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
	this.template = template;
}

public int insertApp (Registration a) {
	String sql = "insert into TBL_APPLICANT (app_username, app_password, app_fname, app_mname, app_lname, app_suffix, app_bdate, app_pbirth, app_gender, app_civil, app_address, app_contact, app_email, user_role_id) values('"+a.getUsername() + "','" + a.getPassword() + "','" + a.getfName() + "','" + a.getmName() + "','" + a.getlName() + "','" + a.getSuffix() + "','" + a.getBdate() + "','" + a.getpBirth() + "','" + a.getGender() + "','" + a.getCivil() + "','" + a.getAddress() + "','" + a.getContact() + "','" + a.getEmailAdd() + "', '" + "3" +"')";
	return template.update(sql);
}


}
