package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.AttendanceBeans;
import erp.hrms.beans.Tuser;
import erp.hrms.dao.AttendanceDao;
import erp.hrms.dao.EmployeeDao;
import erp.hrms.dao.LoginDao;
import erp.hrms.dao.TimesheetApproveDao;

@Controller
public class AttendanceController {
	

	@Autowired
	AttendanceDao attendanceDao;
	
	@Autowired
	TimesheetApproveDao timesheetapproveDao;
	
	@Autowired
	LoginDao loginDao;
	
	public String usern="", passw="";
	public int userID = 0; 
	
	@RequestMapping("/Attendance")
	public ModelAndView timeEntry() {
		ModelAndView mav = new ModelAndView("login/time-entry");
		return mav;
	}

	@RequestMapping(value="user-time-in", method= RequestMethod.POST)
	public ModelAndView userIn(@ModelAttribute("userAttendance") AttendanceBeans attendanceBeans)
	{
		usern = attendanceBeans.getEmp_user();
		passw = attendanceBeans.getEmp_pass();	
		attendanceDao.getEmpAtt();
		userID = attendanceDao.id;
		attendanceDao.save(userID);
		return new ModelAndView("redirect:/Attendance");	
	}
	
	@RequestMapping(value="user-time-out", method= RequestMethod.POST)
	public ModelAndView userOut(@ModelAttribute("userAttendance") AttendanceBeans attendanceBeans)
	{
		usern = attendanceBeans.getEmp_user();
		passw = attendanceBeans.getEmp_pass();	
		attendanceDao.getEmpAtt();
		userID = attendanceDao.id;
		attendanceDao.update(userID);
		return new ModelAndView("redirect:/Attendance");			
	}
	
	@RequestMapping("/Attendance_")
	public ModelAndView empAttendance() {
		ModelAndView mav = new ModelAndView("ess/attendance");
		List<AttendanceBeans> listAttend = attendanceDao.getEmpAttendance();
		mav.addObject("listAttend", listAttend);
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("awta", new Tuser());
		return mav;
	}
	
	//****TIMESHEET*****/
	//WEEKLY
	@RequestMapping(value="save0", method = RequestMethod.POST)
	public ModelAndView savetimesheet(@ModelAttribute("awta") Tuser tuser) {
		userID = loginDao.id;
		timesheetapproveDao.savet(tuser,userID);
		return new ModelAndView("redirect:/Attendance_");
	}
	//MONTHLY
	@RequestMapping(value="save1", method = RequestMethod.POST)
	public ModelAndView savetimesheetw(@ModelAttribute("awta") Tuser tuser) {
		userID = loginDao.id;
		timesheetapproveDao.savet1(tuser,userID);
		return new ModelAndView("redirect:/Attendance_");
	}
}