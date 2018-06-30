package erp.hrms.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Shift;

public class ShiftDao {
	
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	//save
	public int save(Shift s) {
		String sql = "insert into TBL_SHIFT (SHIFT_CODE, GRACE_PERIOD, START_TIME, END_TIME ) values ('"+s.getShiftCode()+"','"+s.getGracePeriod()+"','"+s.getStartTime()+"','"+s.getEndTime()+"')";
		return template.update(sql);
	}
	
	//delete
		public int delete(int id) {
			String sql = "delete from TBL_SHIFT where SHIFT_ID = "+id+"";
			return template.update(sql);
		}
		
		//edit
		public int update(Shift j) {
			String sql = "update TBL_SHIFT set SHIFT_CODE ='"+j.getShiftCode()+"', GRACE_PERIOD  ='"+j.getGracePeriod()+"', START_TIME ='"+j.getStartTime()+"', END_TIME ='"+j.getEndTime()+"' where SHIFT_ID ='"+j.getShiftId()+"'";
			return template.update(sql);
		}
		
	
	
	public List<Shift> getShift(){
		return template.query("SELECT SHIFT_CODE, CAST([GRACE_PERIOD] AS NVARCHAR(100)), convert(NVARCHAR(19), CAST(CAST(DATEADD(SECOND, DATEDIFF(SECOND,0,convert(varchar(18),cast(CAST(SUBSTRING(convert(NVARCHAR, DATEADD(MINUTE, [GRACE_PERIOD]*1.00,''), 108), 1, 5) AS DATETIME) AS TIME),108)), convert(varchar(19),cast(CAST(START_TIME AS DATETIME) as time),108)) AS datetime) AS TIME), 100) AS GTIME ,convert(varchar(19),cast(CAST([START_TIME] AS DATETIME) as time),100) AS STIME, convert(varchar(19),cast(CAST([END_TIME] AS DATETIME) as time),100) AS ETIME, SHIFT_ID from TBL_SHIFT", new RowMapper<Shift>() {
			public Shift mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Shift e = new Shift();
				e.setShiftCode(rs.getString(1));
				e.setGracePeriod(rs.getString(2));
				e.setsGraceTime(rs.getString(3));
				e.setStartTime(rs.getString(4));
				e.setEndTime(rs.getString(5));
				e.setShiftId(rs.getInt(6));
				return e;
			}
			
		});
		
	}
	
		public List<Shift> getShiftCode(){
			return template.query("SELECT SHIFT_ID, SHIFT_CODE  from TBL_SHIFT", new RowMapper<Shift>() {
				public Shift mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					Shift e = new Shift();
					e.setShiftId(rs.getInt(1));
					e.setShiftCode(rs.getString(2));
					return e;
				}
				
			});
		
		

	}
	
	
}
