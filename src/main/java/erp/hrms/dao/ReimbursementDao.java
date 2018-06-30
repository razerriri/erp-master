package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.ReimbursementBean;

public class ReimbursementDao {

	public JdbcTemplate template;
	
	@Autowired
	LoginDao loginDao;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	// LIST REIMBURSEMENT
	 public List<ReimbursementBean> viewReimb() {
		String sql = "SELECT R.REIMB_ID, R.REIMB_DTREQ, R.REIMB_PURPOSE, E.EMP_ID, R.REIMB_TOTAL, (E.EMP_FIRST_NAME + ' ' + E.EMP_LAST_NAME) AS EMP_NAME, R.REIMB_STAT \r\n" + 
				"	FROM TBL_REIMBURSEMENT AS R \r\n" + 
				"	INNER JOIN TBL_EMPLOYEE AS E ON R.EMP_ID = E.EMP_ID\r\n" + 
				"	WHERE E.EMP_ID='" + loginDao.id + "'\r\n" +
				"	AND R.REIMB_STAT='Pending'";
		return template.query(sql, new RowMapper<ReimbursementBean>() {
			public ReimbursementBean mapRow(ResultSet rs, int row) throws SQLException {
				ReimbursementBean b = new ReimbursementBean();
				b.setReimbDate(rs.getString("reimb_dtreq"));
				b.setReimbEmp(rs.getInt("emp_id"));
				b.setReimbEmpName(rs.getString("emp_name"));
				b.setReimbID(rs.getInt("reimb_id"));
				b.setReimbStatus(rs.getString("reimb_stat"));
				b.setReimbTotal(rs.getInt("reimb_total"));
				b.setReimbPurpose(rs.getString("reimb_purpose"));
				return b;
			}
		});
	 }
	 
	 //LIST REIMBURSEMENT APPROVED
	 public List<ReimbursementBean> viewApprovedReimb() {
		String sql = "SELECT R.REIMB_ID, R.REIMB_DTREQ, R.REIMB_PURPOSE, E.EMP_ID, R.REIMB_TOTAL, (E.EMP_FIRST_NAME + ' ' + E.EMP_LAST_NAME) AS EMP_NAME, R.REIMB_STAT \r\n" + 
				"	FROM TBL_REIMBURSEMENT AS R \r\n" + 
				"	INNER JOIN TBL_EMPLOYEE AS E ON R.EMP_ID = E.EMP_ID\r\n" + 
				"	WHERE E.EMP_ID='" + loginDao.id + "'\r\n" +
				"	AND R.REIMB_STAT='Approved'";
		return template.query(sql, new RowMapper<ReimbursementBean>() {
			public ReimbursementBean mapRow(ResultSet rs, int row) throws SQLException {
				ReimbursementBean b = new ReimbursementBean();
				b.setReimbDate(rs.getString("reimb_dtreq"));
				b.setReimbEmp(rs.getInt("emp_id"));
				b.setReimbEmpName(rs.getString("emp_name"));
				b.setReimbID(rs.getInt("reimb_id"));
				b.setReimbStatus(rs.getString("reimb_stat"));
				b.setReimbTotal(rs.getInt("reimb_total"));
				b.setReimbPurpose(rs.getString("reimb_purpose"));
				return b;
			}
		});
	 }
	 
	 public List<ReimbursementBean> viewExp(int rID) {
	 	String sql = "SELECT EXP_DTPURCHASE, EXP_RECEIPT_NO, EXP_DESC, EXP_UPRICE, EXP_QTY, EXP_TOTAL, EXP_ID FROM TBL_EXPENSE WHERE REIMB_ID='" + rID + "'";
		return template.query(sql, new RowMapper<ReimbursementBean>() {
			public ReimbursementBean mapRow(ResultSet rs, int row) throws SQLException {
				ReimbursementBean b = new ReimbursementBean();
				b.setExpDate(rs.getString("exp_dtpurchase"));
				b.setExpReceipt(rs.getString("exp_receipt_no"));
				b.setExpDesc(rs.getString("exp_desc"));
				b.setExpPrice(rs.getInt("exp_uprice"));
				b.setExpQty(rs.getInt("exp_qty"));
				b.setExpID(rs.getInt("exp_id"));
				b.setExpTotal(rs.getInt("exp_total"));
				return b;
			}
		});
	 }
	 
	//INSERT REIMBURSEMENT
	 public int insertReimb() {
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		 Date today = new Date();
		 String sql = "INSERT INTO TBL_REIMBURSEMENT(REIMB_DTREQ, EMP_ID, REIMB_STAT) VALUES('" + dateFormat.format(today).toString() + "', '" + loginDao.id + "', '" + "Pending" + "')"; 
		 
		 return template.update(sql);
	 }
	 
	 public int cancelReimb() {
		String sql="DELETE FROM TBL_REIMBURSEMENT WHERE REIMB_ID=(SELECT MAX(REIMB_ID) FROM TBL_REIMBURSEMENT)";
		return template.update(sql);
	}
	 
	 public int updateReimb(ReimbursementBean b) {
		String sql="UPDATE TBL_REIMBURSEMENT SET REIMB_PURPOSE='" + b.getReimbPurpose() + "', REIMB_TOTAL=(SELECT SUM(EXP_TOTAL) FROM TBL_EXPENSE WHERE REIMB_ID=(SELECT MAX(REIMB_ID) FROM TBL_REIMBURSEMENT)) WHERE REIMB_ID=(SELECT MAX(REIMB_ID) FROM TBL_REIMBURSEMENT)";
		return template.update(sql);
	 } 
	 
	 //INSERT EXPENSE
	 public boolean insertExp(ReimbursementBean b[]) {		
		String sql = "INSERT INTO TBL_EXPENSE(EXP_DTPURCHASE, EXP_RECEIPT_NO, EXP_DESC, EXP_UPRICE, EXP_QTY, REIMB_ID) VALUES(?, ?, ?, ?, ?, (SELECT MAX(REIMB_ID) FROM TBL_REIMBURSEMENT))";
		template.update(sql, new Object[] {b[0].getExpDate(), b[0].getExpReceipt(), b[0].getExpDesc(), b[0].getExpPrice(), b[0].getExpQty()});
		
		return true;
	}
	 	 
	 //DELETE BUTTON
	 public int deleteExp(int id) {
		String sql="DELETE FROM TBL_EXPENSE WHERE REIMB_ID='" + id + "'";
		return template.update(sql);
	}
	 
	public int deleteReimb(int id) {
		String sql="DELETE FROM TBL_REIMBURSEMENT WHERE REIMB_ID='" + id + "'";
		return template.update(sql);
	}
	 
	
	//****************************DEPARTMENT HEAD****************************/
	// LIST REIMBURSEMENT
	 public List<ReimbursementBean> viewDeptReimb() {
		String sql = "SELECT R.REIMB_ID, R.REIMB_DTREQ, R.REIMB_PURPOSE, E.EMP_ID, R.REIMB_TOTAL, (E.EMP_FIRST_NAME + ' ' + E.EMP_LAST_NAME) AS EMP_NAME, R.REIMB_STAT \r\n" + 
				"	FROM TBL_REIMBURSEMENT AS R \r\n" + 
				"	INNER JOIN TBL_EMPLOYEE AS E ON R.EMP_ID = E.EMP_ID";
		return template.query(sql, new RowMapper<ReimbursementBean>() {
			public ReimbursementBean mapRow(ResultSet rs, int row) throws SQLException {
				ReimbursementBean b = new ReimbursementBean();
				b.setReimbDate(rs.getString("reimb_dtreq"));
				b.setReimbEmp(rs.getInt("emp_id"));
				b.setReimbEmpName(rs.getString("emp_name"));
				b.setReimbID(rs.getInt("reimb_id"));
				b.setReimbStatus(rs.getString("reimb_stat"));
				b.setReimbTotal(rs.getInt("reimb_total"));
				b.setReimbPurpose(rs.getString("reimb_purpose"));
				return b;
			}
		});
	 }
	 // APPROVAL
	 public int updateReimbReq(ReimbursementBean b) {
		 String sql="UPDATE TBL_REIMBURSEMENT SET REIMB_STAT='" + b.getReimbStatus() + "' WHERE REIMB_ID='" + b.getReimbID() + "'";
		return template.update(sql);
	 }
	 
	 // for journal entry
	 public int insertJevInfo(ReimbursementBean b) {
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		 Date today = new Date();
		 String sql = "INSERT INTO TBL_FS_JEV_INFO (jev_date, jev_trans_type, tot_db, tot_cr, jev_creator, jev_remarks, tstat_name) VALUES('" + dateFormat.format(today).toString() + "', 'Cash Receipts', (SELECT REIMB_TOTAL FROM TBL_REIMBURSEMENT WHERE REIMB_ID='" + b.getReimbID() + "'), (SELECT REIMB_TOTAL FROM TBL_REIMBURSEMENT WHERE REIMB_ID='" + b.getReimbID() + "'), '" + loginDao.id + "', 'Reimbursement Request', 'Pending'" + ")";
		 return template.update(sql);
	 }
	 
	 public int insertJevDetails(ReimbursementBean b) {
		 String sql = "INSERT INTO TBL_FS_JEV_DETAILS (resp_name, dbcoa_name, jevd_dbamt, crcoa_name, jevd_cramt, jevd_expl, jev_id) VALUES('" + loginDao.dept + "', 'Cash', (SELECT REIMB_TOTAL FROM TBL_REIMBURSEMENT WHERE REIMB_ID='" + b.getReimbID() + "'), 'Accounts Payable', (SELECT REIMB_TOTAL FROM TBL_REIMBURSEMENT WHERE REIMB_ID='" + b.getReimbID() + "'), 'Reimbursement Request from " + b.getReimbEmpName() + "', (SELECT MAX(JEV_ID) FROM TBL_FS_JEV_INFO)" + ")";
		 return template.update(sql);
	 } 	
	 
	 public int insertSupportDocu(ReimbursementBean b) {
		 String sql = "EXECUTE [dbo].[SP_EXPENSE] @REIMBID='" + b.getReimbID() + "'";
		 return template.update(sql);
	 }
}
