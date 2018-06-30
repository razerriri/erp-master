package erp.hrms.dao;

import java.sql.*;
import java.util.*;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.jdbc.core.JdbcTemplate;
import erp.hrms.beans.supervisor_transaction_evaluationBean;

public class supervisor_transaction_evaluationDao {

	public JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//TABLE
	public List<supervisor_transaction_evaluationBean> s_t_e()
	{
		return template.query("select EMP_FIRST_NAME+' '+EMP_LAST_NAME as Employee from tbl_employee", new RowMapper<supervisor_transaction_evaluationBean>() 
		{
			public supervisor_transaction_evaluationBean mapRow(ResultSet rs, int row) throws SQLException{
				supervisor_transaction_evaluationBean ad = new supervisor_transaction_evaluationBean();
				ad.setname(rs.getString("Employee"));

				return ad;
				}
		});
	}

}