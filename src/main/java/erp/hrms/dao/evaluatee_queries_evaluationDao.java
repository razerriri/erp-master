package erp.hrms.dao;

import java.sql.*;
import java.util.*;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.jdbc.core.JdbcTemplate;
import erp.hrms.beans.evaluatee_queries_evaluationBean;

public class evaluatee_queries_evaluationDao {

	public JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//TABLE
	public List<evaluatee_queries_evaluationBean> e_q_e()
	{
		return template.query("select date_evaluated as 'Date Evaluated', final_grade as 'Final Grade' from tbl_emp_evaluation where emp_id = 1", new RowMapper<evaluatee_queries_evaluationBean>() 
		{
			public evaluatee_queries_evaluationBean mapRow(ResultSet rs, int row) throws SQLException{
				evaluatee_queries_evaluationBean ad = new evaluatee_queries_evaluationBean();
				ad.setdate(rs.getString("Date Evaluated"));
				ad.setgrade(rs.getString("Final Grade"));

				return ad;
				}
		});
	}

}
