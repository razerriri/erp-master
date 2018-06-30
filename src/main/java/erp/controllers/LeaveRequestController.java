package erp.controllers;

import java.util.List;
import java.text.*;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.LeaveRequestBean;
//import hrms3.leavemgmt.beans.adminSetupBean;
import erp.hrms.dao.LeaveRequestDao;
import erp.hrms.dao.LoginDao;

@Controller
public class LeaveRequestController {

	@Autowired
	LeaveRequestDao LeaveRequestDao;
	
	@Autowired
	LoginDao loginDao;
	
	@RequestMapping("/leaveApproval")
	public ModelAndView leaveRequestApproval() {
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		DateTimeFormatter dtformat = DateTimeFormatter.ofPattern("MM-dd-yyyy");
		LocalDateTime dateToday = LocalDateTime.from(date.toInstant().atZone(ZoneId.of("UTC")));
		LocalDateTime dateTom = LocalDateTime.from(date.toInstant().atZone(ZoneId.of("UTC"))).plusDays(1);
		LocalDateTime dateNext = LocalDateTime.from(date.toInstant().atZone(ZoneId.of("UTC"))).plusDays(2);
		List<LeaveRequestBean> listRequest = LeaveRequestDao.viewRequest();	
		List<LeaveRequestBean> listEmp = LeaveRequestDao.dropdownEmp();
		List<LeaveRequestBean> listLeave = LeaveRequestDao.dropdownLeave();
		List<LeaveRequestBean> listBalance = LeaveRequestDao.viewBalance();
		List<LeaveRequestBean> listToday = LeaveRequestDao.listToday();
		List<LeaveRequestBean> listTomorrow = LeaveRequestDao.listTomorrow();
		List<LeaveRequestBean> listNext = LeaveRequestDao.listNext();
			
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("depthead/leave_admin_request_view");
		mav.addObject("viewTitle", "Leave Requisition");
		mav.addObject("fileDate", dateFormat.format(date).toString());
		mav.addObject("dropEmpID", listEmp);
		mav.addObject("dropLeave", listLeave);
		mav.addObject("listRequest", listRequest);	
		mav.addObject("listBalance", listBalance);
		mav.addObject("listToday", listToday);
		mav.addObject("listTomorrow", listTomorrow);
		mav.addObject("listNext", listNext);
		mav.addObject("dateToday", dtformat.format(dateToday).toString());
		mav.addObject("dateTom", dtformat.format(dateTom).toString());
		mav.addObject("dateNext", dtformat.format(dateNext).toString());
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		
		return mav;
	}	
	
	// UPDATE
	@RequestMapping(value="updateReq", method = RequestMethod.POST)
	public ModelAndView updateRequest(@ModelAttribute ("modelUpdateReq") LeaveRequestBean b) {
			LeaveRequestDao.updateLeaveReq(b);
			LeaveRequestDao.updateLeaveBal(b);
			return new ModelAndView("redirect:/leaveApproval");
	}
}
