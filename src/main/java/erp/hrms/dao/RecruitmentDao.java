package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.RecruitmentBean;
import erp.hrms.beans.Registration;

public class RecruitmentDao {

	public JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//*************** APPLICANT *****************//
	public List<RecruitmentBean> viewApprovedJob() {
		String sql = "SELECT P.JOB_POST_ID, P.JOB_POST_TITLE, P.JOB_POST_DESCRIPTION, P.JOB_ID, J.JOB_NAME, P.JOB_POST_DATE, P.JOB_POST_STATUS, PG.PAY_GRADE_MINIMUM, PG.PAY_GRADE_MAXIMUM \r\n" + 
				"FROM TBL_JOB_POST AS P \r\n" + 
				"	INNER JOIN TBL_JOB AS J ON P.JOB_ID = J.JOB_ID \r\n" + 
				"	INNER JOIN TBL_PAY_GRADE AS PG ON J.PAY_GRADE_ID = PG.PAY_GRADE_ID\r\n" + 
				"WHERE P.JOB_POST_STATUS = 'Approved'";
		return template.query(sql, new RowMapper<RecruitmentBean>() {
			public RecruitmentBean mapRow(ResultSet rs, int row) throws SQLException {
				RecruitmentBean b = new RecruitmentBean();
				b.setPostID(rs.getInt("job_post_id"));
				b.setPostTitle(rs.getString("job_post_title"));
				b.setPostDesc(rs.getString("job_post_description"));
				b.setPostJob(rs.getInt("job_id"));
				b.setPostJobName(rs.getString("job_name"));
				b.setPostDate(rs.getString("job_post_date"));
				b.setPostStat(rs.getString("job_post_status"));
				b.setPayMin(rs.getString("pay_grade_minimum"));
				b.setPayMax(rs.getString("pay_grade_maximum"));
				return b;
			}
		});
	}


	
	
	//*************** HIRING MANAGER *****************//
	//Approval of Job Requests
	public int updateJobPost(RecruitmentBean b) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String todayDate = dateFormat.format(date).toString();
		String sql = "UPDATE TBL_JOB_POST SET JOB_POST_STATUS='" + b.getPostStat() + "' , JOB_POST_DATE='" + todayDate + "' WHERE JOB_POST_ID='" + b.getPostID() + "'";
		return template.update(sql);
	}
	
	//Table for Job Requests
	 public List<RecruitmentBean> viewJobReq() {
			String sql = "SELECT P.JOB_POST_ID, P.JOB_POST_TITLE, P.JOB_POST_DESCRIPTION, P.JOB_ID, J.JOB_NAME, (E.EMP_FIRST_NAME + ' ' + E.EMP_LAST_NAME) AS EMP_NAME, P.JOB_REQUESTED_BY, P.JOB_POST_DATE, P.JOB_POST_STATUS\r\n" + 
					"FROM TBL_JOB_POST AS P \r\n" + 
					"	INNER JOIN TBL_JOB AS J ON P.JOB_ID = J.JOB_ID \r\n" + 
					"	INNER JOIN TBL_EMPLOYEE AS E ON P.JOB_REQUESTED_BY = E.EMP_ID";
			return template.query(sql, new RowMapper<RecruitmentBean>() {
				public RecruitmentBean mapRow(ResultSet rs, int row) throws SQLException {
					RecruitmentBean b = new RecruitmentBean();
					b.setPostID(rs.getInt("job_post_id"));
					b.setPostTitle(rs.getString("job_post_title"));
					b.setPostDesc(rs.getString("job_post_description"));
					b.setPostJob(rs.getInt("job_id"));
					b.setPostJobName(rs.getString("job_name"));
					b.setPostReq(rs.getInt("job_requested_by"));
					b.setPostReqName(rs.getString("emp_name"));
					b.setPostDate(rs.getString("job_post_date"));
					b.setPostStat(rs.getString("job_post_status"));
					return b;
				}
			});
		}
	
	
	//*************** DEPARTMENT HEAD *****************//
	
	// Submit Job Post Request
	public int addJobPost(RecruitmentBean b) {
		String sql = "INSERT INTO TBL_JOB_POST(JOB_POST_TITLE, JOB_POST_DESCRIPTION, JOB_ID, JOB_REQUESTED_BY, JOB_POST_STATUS) VALUES('" + b.getPostTitle() + "','" + b.getPostDesc() + "','" + b.getPostJob() + "','" + b.getPostReq() + "','" + b.getPostStat() + "')";
		return template.update(sql);
	}
	
	// List Job Titles
	 public List<RecruitmentBean> dropdownJob() {
		String sql = "SELECT * FROM TBL_JOB";
		return template.query(sql, new RowMapper<RecruitmentBean>() {
			public RecruitmentBean mapRow(ResultSet rs, int row) throws SQLException {
				RecruitmentBean b = new RecruitmentBean();
				b.setJobID(rs.getInt("job_id"));
				b.setJobName(rs.getString("job_name"));
				return b;
			}
		});
	}
	 
}
