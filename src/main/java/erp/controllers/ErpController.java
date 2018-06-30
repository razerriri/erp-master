package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.EmployeeBeans;
import erp.hrms.beans.LoginBean;
import erp.hrms.beans.RecruitmentBean;
import erp.hrms.beans.Requests;
import erp.hrms.beans.SchedDays;
import erp.hrms.beans.Shift;
import erp.hrms.dao.LoginDao;
import erp.hrms.dao.RecruitmentDao;
import erp.hrms.dao.RequestDao;
import erp.hrms.dao.SchedDayDao;
import erp.hrms.dao.ShiftDao;
import erp.hrms.dao.WorkingDaysDao;

@Controller
public class ErpController {
LoginBean b = new LoginBean();
	
	
	@Autowired
	ShiftDao shiftDao;
	
	@Autowired
	RequestDao employeeDao;
	
	@Autowired
	SchedDayDao schedDayDao;
	
	@Autowired
	RecruitmentDao recruitmentDao;
	
	@Autowired
	LoginDao loginDao;
	
	@Autowired
	WorkingDaysDao workingDaysDao;
	
	public String usern="", passw="";
	
	
	
	@RequestMapping(value= {"/","login/"})
	public ModelAndView login() {
		loginDao.role = "";
		loginDao.un = "";
		loginDao.pw = "";
		loginDao.name = "";
		loginDao.dept = "";
		loginDao.appRole = "";
		loginDao.appName = "";
		loginDao.appID = 0;
		loginDao.id = 0;
		ModelAndView mv = new ModelAndView("login/login");
		return mv;
	}
	
	@RequestMapping("index")
	public ModelAndView saveLogin(@ModelAttribute ("modelLogin") LoginBean request) {
			ModelAndView mav = new ModelAndView();
			usern = request.getUsername();
			passw = request.getPassword();
			loginDao.getLogin();
			loginDao.getLoginApp();
			
			// Add condition for another user role
			
			if(loginDao.role.equals("admin")) {
				mav.setViewName("index");
			} 	
			else if(loginDao.role.equals("department head")) {
				mav.setViewName("depthead/index");
			}
			else if(loginDao.role.equals("employee")) {
				mav.setViewName("ess/index");
			}
			else if(loginDao.role.equals("hiring manager")) {
				mav.setViewName("hiring-manager/index");
			}
			else if(loginDao.role.equals("hr manager")) {
				mav.setViewName("hr-manager/index");
			}
			else if(loginDao.role.equals("payroll master")) {
				mav.setViewName("index");
			}
			else if(loginDao.role.equals("accountant")) {
				mav.setViewName("depthead/index");
			}
			else if(loginDao.appRole.equals("applicant")) {
				mav.setViewName("applicant/index");
				List<RecruitmentBean> listJobReq = recruitmentDao.viewApprovedJob();
				mav.addObject("viewAppName", loginDao.appName);
				mav.addObject("viewJobReq", listJobReq);
			}
			mav.addObject("viewName", loginDao.name);
			mav.addObject("viewRole", loginDao.role);
			mav.addObject("getID", loginDao.id);
			return mav;
	}

	@RequestMapping("/calendar")
	public ModelAndView calendar() {
		ModelAndView mv = new ModelAndView("calendar");
		return mv;
	}
	
	@RequestMapping(value="manage-users/")
	public ModelAndView manageUsers() {
		ModelAndView mv = new ModelAndView("manage-users");
		return mv;
	}
	
	//Compensation Planning And Administration
	@RequestMapping(value= {"/hrms/cpa/","/hrms/cpa/index/"})
	public ModelAndView cpaIndex() {
		ModelAndView mv = new ModelAndView("cpa/index");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/tcompensation/")
	public ModelAndView tCompensation() {
		ModelAndView mv = new ModelAndView("cpa/tcompensation");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/compensation-plan/")
	public ModelAndView compensationPlan() {
		ModelAndView mv = new ModelAndView("cpa/compensation");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/administration")
	public ModelAndView administration() {
		ModelAndView mv = new ModelAndView("cpa/administration");
		return mv;
	}
	
	@RequestMapping(value="/hrms/cpa/rcompensation/")
	public ModelAndView rCompensation() {
		ModelAndView mv = new ModelAndView("cpa/rcompensation");
		return mv;
	}
	
	
	//HR ANALYTICS
	@RequestMapping(value="/hrms/hranalytics/dashboard/")
	public ModelAndView hrAnanalyticsDashboard() {
		ModelAndView mv = new ModelAndView("hranalytics/dashboard");
		return mv;
	}
	
	@RequestMapping(value= "/hrms/hranalytics/reports/")
	public ModelAndView hranalyticsReports() {
		ModelAndView mv = new ModelAndView("hranalytics/reports");
		return mv;
	}
	
	@RequestMapping(value= "/hrms/hranalytics/performance-management/")
	public ModelAndView hranalyticsPerformanceManagement() {
		ModelAndView mv = new ModelAndView("hranalytics/performance-management");
		return mv;
	}
	
	@RequestMapping(value= "/hrms/hranalytics/workforce/")
	public ModelAndView hranalyticsWorkforce() {
		ModelAndView mv = new ModelAndView("hranalytics/workforce");
		return mv;
	}
	
	//PAYROLL
	@RequestMapping(value="/hrms/payroll/generate-payroll/")
	public ModelAndView generatePayroll() {
		ModelAndView mv = new ModelAndView("payroll/generate-payroll");
		return mv;
	}
	
	@RequestMapping(value="/hrms/payroll/reports/")
	public ModelAndView reports() {
		ModelAndView mv = new ModelAndView("payroll/reports");
		return mv;
	}
	
	//NEW HIRE ON BOARD//
	
	@RequestMapping("/hrms/newhireonboard/nhindex/")
	public ModelAndView a_index() {	
		ModelAndView mav = new ModelAndView("newhireonboard/a_index");	
		return mav;
	}
	
	
		//CALENDAR
	
		@RequestMapping(value="calendar/")
		public ModelAndView hCalendar() {
			ModelAndView mv = new ModelAndView("calendar");
			return mv;
		}
		
		// USERSIDE
		
		@RequestMapping(value="/hrms/users/schedules/")
		public ModelAndView hUser() {
			ModelAndView mv = new ModelAndView("users/myschedule");
			return mv;
		}
		//**************************SHIFT AND SCHEDULING**************************/
		//ESS
		@RequestMapping("/ess/schedule/")
		public ModelAndView userSchedule() {
			List<Shift> shiftlist = shiftDao.getShift();
			ModelAndView mav = new ModelAndView();
			mav.setViewName("ess/user-schedule");
			mav.addObject("shiftlist", shiftlist);
			mav.addObject("viewName", loginDao.name);
			mav.addObject("viewRole", loginDao.role);
			return mav;
		}
		
		//////SHIFT AND SCHEDULING/////////////
		@RequestMapping(value="/hrms/hrshiftsched/schedules/")
		public ModelAndView hSchedules() {
			List<SchedDays> approvedlist1 = schedDayDao.getApproved();
			List<SchedDays> approvedlist2 = schedDayDao.getApprovedSched();
			ModelAndView mv = new ModelAndView("hrshiftsched/schedules");
			mv.addObject("approvedlist1", approvedlist1);
			mv.addObject("approvedlist2", approvedlist2);
			mv.addObject("viewName", loginDao.name);
			mv.addObject("viewRole", loginDao.role);
			return mv;
		}
		
		@RequestMapping(value="/hrms/hrshiftsched/assign-shift/")
		public ModelAndView assignShift() {
			List<SchedDays> elist = schedDayDao.getEmps();
			List<SchedDays> alist = schedDayDao.getEmpShift();
			//
			List<Shift>  slist = shiftDao.getShiftCode();
			ModelAndView mv = new ModelAndView("hrshiftsched/assign-shift");
			mv.addObject("elist", elist);
			mv.addObject("alist", alist);
			//
			mv.addObject("slist", slist);
			mv.addObject("viewName", loginDao.name);
			mv.addObject("viewRole", loginDao.role);
			return mv;
		}
		
		@RequestMapping(value="/hrms/hrshiftsched/reports/")
		public ModelAndView hReports() {
			List<SchedDays> approvedlist2 = schedDayDao.getApprovedList();
			ModelAndView mv = new ModelAndView("hrshiftsched/reports");
			mv.addObject("approvedlist2", approvedlist2);
			mv.addObject("viewName", loginDao.name);
			mv.addObject("viewRole", loginDao.role);
			return mv;
		}
		
		//UPDATED DEPT SIDE
		
		@RequestMapping(value="/dept/calendar/")
		public ModelAndView sCalendar() {
			List<SchedDays> monday = workingDaysDao.getMondays();
			List<SchedDays> tuesday = workingDaysDao.getTuesdays();
			List<SchedDays> wednesday = workingDaysDao.getWednesdays();
			List<SchedDays> thursday = workingDaysDao.getThursdays();
			List<SchedDays> friday = workingDaysDao.getFridays();
			List<SchedDays> saturday = workingDaysDao.getSaturdays();
			ModelAndView mv = new ModelAndView("depthead/calendar");
			mv.addObject("monday", monday);
			mv.addObject("tuesday", tuesday);
			mv.addObject("wednesday", wednesday);
			mv.addObject("thursday", thursday);
			mv.addObject("friday", friday);
			mv.addObject("saturday", saturday);
			mv.addObject("viewName", loginDao.name);
			mv.addObject("viewRole", loginDao.role);
			return mv;
		}
		
		@RequestMapping("/dept/schedules/")
		public ModelAndView deptSchedule() {
			List<SchedDays> approvedlist3 = schedDayDao.getApprovedList();
			ModelAndView mav = new ModelAndView();
			mav.setViewName("depthead/dept-head-schedule");
			mav.addObject("approvedlist3", approvedlist3);
			mav.addObject("viewName", loginDao.name);
			mav.addObject("viewRole", loginDao.role);
			return mav;
		}
		
		@RequestMapping("/dept/requests/")
		public ModelAndView deptRequest() {
			List<SchedDays> pendingList = schedDayDao.getPendingSched();
			List<SchedDays> pendingList2 = schedDayDao.getPendingSched2();
			ModelAndView mav = new ModelAndView();
			mav.setViewName("depthead/dept-head-requests");
			mav.addObject("pendingList", pendingList);
			mav.addObject("pendingList2", pendingList2);
			mav.addObject("viewName", loginDao.name);
			mav.addObject("viewRole", loginDao.role);
			return mav;
		}
	
		
		//SETUP
		@RequestMapping(value="/system-setup/time-work/")
		public ModelAndView hTimework() {
			List<Shift> shiftlist = shiftDao.getShift();
			ModelAndView mv = new ModelAndView("system-setup/time-work");
			mv.addObject("shiftlist", shiftlist);
			mv.addObject("viewName", loginDao.name);
			mv.addObject("viewRole", loginDao.role);
			return mv;
		}
		
		//************************SHIFT AND SCHEDULING END*************************/
		
		//PERFORMANCE
		@RequestMapping(value="/hrms/hr_performance_management/supervisor_evaluation_ipcr/")
		public ModelAndView supervisor_e_i() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_evaluation_ipcr");
			return mv;
		}


	@RequestMapping(value="/hrms/hr_performance_management/supervisor_transaction_evaluation2/")
		public ModelAndView supervisor_t_e() {
			ModelAndView mv = new ModelAndView("hr_performance_management/supervisor_transaction_evaluation2");
			return mv;
		}
		
	
}
