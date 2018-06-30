package erp.hrms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;


import java.sql.*;
import java.util.*;
import org.springframework.jdbc.core.RowMapper;

//import erp.hrms.beans.Department;
import erp.hrms.beans.Tuser;

public class TimesheetApproveDao 
{
	@Autowired
	LoginDao loginDao;
	
	JdbcTemplate template;
    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public void setTemplate(JdbcTemplate template)
	{
		this.template = template;
		
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public int updatestatus(Tuser d) 
	{
		String sql = "update tbl_timesheet set timesheet_status='"+d.getTstatus()+"', approver='" + loginDao.id+ "', date_approve = GetDate() where t_id = '"+d.getTsuserId()+"'";
		return template.update(sql);
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public List<Tuser> getviewforpending(Tuser tuser)
	{
		return template.query("SELECT e.EMP_FIRST_NAME + ' ' + e.EMP_MIDDLE_NAME + ' ' + E.EMP_LAST_NAME AS Name,t.date_submission,t.total_hours,t.timesheet_status,t_id,timesheet_type,e.EMP_ID FROM tbl_timesheet t inner join TBL_EMPLOYEE e on e.EMP_ID = t.temployee_id where timesheet_status ='Pending'", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vat = new Tuser();
				vat.setEmpname(rs.getString(1));
				vat.setTsubmissiondate(rs.getString(2));
				vat.setTtotalhrs(rs.getFloat(3));
				vat.setTstatus(rs.getString(4));
				vat.setTsuserId(rs.getInt(5));
				vat.setTtype(rs.getString(6));
				vat.setEmpid(rs.getInt(7));
				return vat;
				}
			});
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public List<Tuser> getviewforapprovedisapprove()
	{
		return template.query("SELECT e.EMP_FIRST_NAME + ' ' + e.EMP_MIDDLE_NAME + ' ' + E.EMP_LAST_NAME,t.date_approve,t.total_hours,t.approver,t.timesheet_status AS Name FROM tbl_timesheet t inner join TBL_EMPLOYEE e on e.EMP_ID = t.temployee_id where timesheet_status !='Pending'", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vad1 = new Tuser();
				vad1.setEmpname(rs.getString(1));
				vad1.setTsubmissiondate(rs.getString(2));
				vad1.setTtotalhrs(rs.getFloat(3));
				vad1.setTapprover(rs.getString(4));
				vad1.setTstatus(rs.getString(5));
				return vad1;
				}
			});
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	/*public List<Tuser> getviewselected(int tid,int empid)
	{
		return template.query("select  e.emp_id,t.t_id, cast(a.td_entry_date as date)[Date], convert(varchar(5),cast(a.td_Time_IN as time))[Time-In], convert(varchar(5),cast(a.td_Time_OUT as time))[Time-Out], convert(varchar(100),CONCAT((DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)/60),'.',(DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)%60))) [TotalHours] from tbl_time_attendance a inner join TBL_EMPLOYEE e on e.EMP_ID = a.emp_id inner join tbl_timesheet t on t.temployee_id = e.EMP_ID where e.EMP_ID = '"+tid+"'  ", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vad2 = new Tuser();
				vad2.setEmpid(rs.getInt(1));
				vad2.setTsuserId(rs.getInt(2));
				vad2.setTnadate(rs.getString(3));
				vad2.setTimeinval(rs.getString(4));
				vad2.setTimeoutval(rs.getString(5));
				vad2.setTnatotal(rs.getFloat(6));
				return vad2;
				}
			});
	}
	*/
	
	public List<Tuser> getviewselected(Tuser tuser)
	{
		return template.query("select  e.emp_id,t.t_id, cast(a.td_entry_date as date)[Date], convert(varchar(5),cast(a.td_Time_IN as time))[Time-In], convert(varchar(5),cast(a.td_Time_OUT as time))[Time-Out], convert(varchar(100),CONCAT((DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)/60),'.',(DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)%60))) [TotalHours] from tbl_time_attendance a inner join TBL_EMPLOYEE e on e.EMP_ID = a.emp_id inner join tbl_timesheet t on t.temployee_id = e.EMP_ID where e.EMP_ID = 2", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vad2 = new Tuser();
				vad2.setEmpid(rs.getInt(1));
				vad2.setTsuserId(rs.getInt(2));
				vad2.setTnadate(rs.getString(3));
				vad2.setTimeinval(rs.getString(4));
				vad2.setTimeoutval(rs.getString(5));
				vad2.setTnatotal(rs.getFloat(6));
				return vad2;
				}
			});
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
		public List<Tuser> getsumofreghours()
		{
			return template.query("select sum(cast((CONCAT((DATEDIFF(Minute,td_time_in,td_time_out)/60),'.',(DATEDIFF(Minute,td_time_in,td_time_out)%60))) as float))from tbl_time_attendance ", new RowMapper<Tuser>() 
			{
				public Tuser mapRow(ResultSet rs, int row) throws SQLException{
					Tuser vad2 = new Tuser();
					vad2.setSumreghrs(rs.getFloat(1));
					return vad2;
					}
				});
		}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
		public List<Tuser> getsumofundertimehours()
		{
			return template.query("select sum(cast((CONCAT((DATEDIFF(Minute,a.td_time_out,'23:00:00')/60),'.',(DATEDIFF(Minute,a.td_time_out,'23:00:00')%60))) as float))from tbl_time_attendance a ", new RowMapper<Tuser>() 
			{
				public Tuser mapRow(ResultSet rs, int row) throws SQLException{
					Tuser vad2 = new Tuser();
					vad2.setSumunderhrs(rs.getFloat(1));
					return vad2;
					}
				});
		}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
		public List<Tuser> getsumoflate()
		{
			return template.query("select sum(cast((CONCAT((DATEDIFF(Minute,s.START_TIME,a.td_time_in)/60),\r\n" + 
					"'.',\r\n" + 
					"(DATEDIFF(Minute,s.START_TIME,a.td_time_in)%60))) as float))\r\n" + 
					"from tbl_time_attendance a\r\n" + 
					"inner join TBL_EMPLOYEE e\r\n" + 
					"on a.EMP_ID = e.EMP_ID\r\n" + 
					"inner join REF_SCHEDULE rs\r\n" + 
					"on rs.EMP_ID = e.EMP_ID\r\n" + 
					"\r\n" + 
					"inner join TBL_SHIFT s\r\n" + 
					"on s.SHIFT_ID = rs.SHIFT_ID\r\n" + 
					"inner join TBL_SCHEDULE s1\r\n" + 
					"on s1.SCHED_ID = rs.SCHED_ID\r\n" + 
					" WHERE e.EMP_ID=2 and  a.td_time_in > s.START_TIME and (a.TD_ENTRY_DATE >= s1.BEGIN_DATE and a.TD_ENTRY_DATE <= s1.END_DATE)", new RowMapper<Tuser>() 
			{
				public Tuser mapRow(ResultSet rs, int row) throws SQLException{
					Tuser vad2 = new Tuser();
					vad2.setSumlatehrs(rs.getFloat(1));
					return vad2;
					}
				});
		}
		
		
		public int savet(Tuser d, int userID) {
			String sql = "insert into tbl_timesheet(temployee_id,timesheet_status,timesheet_type,date_submission,forthemonthof,yearoftimesheet) values('" + userID + "','Pending','"+d.getTtype()+"', getdate(),'"+d.getForthemonthof()+"',cast(year(getdate()) as int))";
			return template.update(sql);
		}
			
		public int savet1(Tuser d, int userID) {
			String sql = "insert into tbl_timesheet(temployee_id,timesheet_status,timesheet_type,date_submission,weekstart,weekend) values('" + userID + "','Pending','"+d.getTtype()+"',getdate(),'"+d.getWeekstart()+"',DATEADD(dd,"+d.getTdaysno() +",'"+d.getWeekstart()+"') )";
			return template.update(sql);
		}
		
		/*public int savetimesheet(Tuser d) 
	{
		String sql = "insert into tbl_timesheet() values('"+d.getDeptName()+"','"+d.getDeptDesc()+"')";
		return template.update(sql);
	}
	*/
}

