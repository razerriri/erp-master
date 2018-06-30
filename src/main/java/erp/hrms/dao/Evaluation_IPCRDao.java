package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Evaluation_IPCRBean;

public class Evaluation_IPCRDao {

JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
	this.template = template;
}
public int save(Evaluation_IPCRBean e) {
	String sql = "INSERT INTO TBL_EMP_EVALUATION(EMP_ID,MANAGER_ID,sp01si,sp01aa,sp01q,sp01e,sp01t,sp01a,sp01rem,sp02si,sp02aa,sp02q,sp02e,sp02t,sp02a,sp02rem,cf01si,cf01aa,cf01q,cf01e,cf01t,cf01a,cf01rem,cf02si,cf02aa,cf02q,cf02e,cf02t,cf02a,cf02rem) VALUES('1','1','1','1','1','1','1','1','1','1','1','1','1' ,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1')";
	//String sql = "INSERT INTO TBL_EMP_EVALUATION(EMP_ID,MANAGER_ID,sp01si,sp01aa,sp01q,sp01e,sp01t,sp01a,sp01rem,sp02si,sp02aa,sp02q,sp02e,sp02t,sp02a,sp02rem,cf01si,cf01aa,cf01q,cf01e,cf01t,cf01a,cf01rem,cf02si,cf02aa,cf02q,cf02e,cf02t,cf02a,cf02rem) VALUES('1','1','"+e.getsp01si()+"','"+e.getsp01aa()+"','"+e.getsp01q()+"','"+e.getsp01e()+"','"+e.getsp01t()+"','"+e.getsp01a()+"','"+e.getsp01rem()+"','"+e.getsp02si()+"','"+e.getsp02aa()+"','"+e.getsp02q()+"','"+e.getsp02e()+"' ,'"+e.getsp02t()+"','"+e.getsp02a()+"','"+e.getsp02rem()+"','"+e.getcf01si()+"','"+e.getcf01aa()+"','"+e.getcf01q()+"','"+e.getcf01e()+"','"+e.getcf01t()+"','"+e.getcf01a()+"','"+e.getcf01rem()+"','"+e.getcf02si()+"','"+e.getcf02aa()+"','"+e.getcf02q()+"','"+e.getcf02e()+"','"+e.getcf02t()+"','"+e.getcf02a()+"','"+e.getcf02rem()+"')";
	return template.update(sql);
}

}
