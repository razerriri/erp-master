package erp.controllers;

import java.util.List;
import java.text.*;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import erp.hrms.beans.SchedDays;
import erp.hrms.dao.SchedDayDao;
import erp.hrms.beans.LeaveRequestBean;
import erp.hrms.beans.ReimbursementBean;
import erp.hrms.dao.LeaveRequestDao;
import erp.hrms.dao.LoginDao;
import erp.hrms.dao.ReimbursementDao;

@Controller
public class ESSController {
	
	@Autowired
	LeaveRequestDao LeaveRequestDao;
	
	@Autowired
	LoginDao loginDao;
	
	@Autowired
	ReimbursementDao reimbursementDao;

	
	LeaveRequestBean b = new LeaveRequestBean();
	
	//************LEAVE REQUEST******************/
	@RequestMapping("/leaveRequest")
	public ModelAndView leaveRequest() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		List<LeaveRequestBean> listEmpRequest = LeaveRequestDao.viewEmpRequest();	
		List<LeaveRequestBean> listEmp = LeaveRequestDao.dropdownEmp();
		List<LeaveRequestBean> listLeave = LeaveRequestDao.dropdownLeave();
		List<LeaveRequestBean> listBalance = LeaveRequestDao.viewBalance();
				
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("ess/leave_emp_request_view");
		mav.addObject("viewTitle", "Leave Requisition");
		mav.addObject("fileDate", dateFormat.format(date).toString());
		mav.addObject("dropEmpID", listEmp);
		mav.addObject("dropLeave", listLeave);
		mav.addObject("listEmpRequest", listEmpRequest);	
		mav.addObject("listBalance", listBalance);
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		
		return mav;
	}
	
	@RequestMapping(value="submitLeaveReq", method=RequestMethod.POST, 
			headers = {"Content-type=application/json"})
	@ResponseBody
	public ModelAndView mav(@RequestBody LeaveRequestBean b[])
	{	
		LeaveRequestDao.addLeaveReq(b);
		return new ModelAndView("redirect:/leaveRequest");
	}
	
	@RequestMapping(value = "deleteLeaveReq/{id}", method = RequestMethod.GET)
	public ModelAndView deleteRequest(@PathVariable int id) {
		LeaveRequestDao.deleteRequest(id);
		return new ModelAndView("redirect:/leaveRequest");
	}
	
	//***********REIMBURSEMENT************/
	@RequestMapping("/Reimbursement")
	public ModelAndView reimbursementRequest() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		ModelAndView mav = new ModelAndView();
		List<ReimbursementBean> listReimb = reimbursementDao.viewReimb();
		List<ReimbursementBean> listAppReimb = reimbursementDao.viewApprovedReimb();
		mav.addObject("reimbDate", dateFormat.format(date).toString());
		mav.setViewName("ess/reimb-request");
		mav.addObject("listReimb", listReimb);
		mav.addObject("listAppReimb", listAppReimb);
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		return mav;
	}
	
	// Insert reimbursement to initialize ID for expense
	@RequestMapping(value="submitReimb", method=RequestMethod.POST)
	public void saveReimb() {
		reimbursementDao.insertReimb();
	}
	
	// Cancel and delete last row of reimbursement from database 
	@RequestMapping(value="cancelReimb", method=RequestMethod.POST)
	public void cancelReimb() {
		reimbursementDao.cancelReimb();
	}
	
	// Update reimbursement - Submit form
	@RequestMapping(value="updateReimb", method=RequestMethod.POST)
	public ModelAndView updateReimb(@ModelAttribute ("modelReimb") ReimbursementBean b) {
		reimbursementDao.updateReimb(b);
		return new ModelAndView("redirect:/Reimbursement");
	}
	
	@RequestMapping(value="submitExpense", method=RequestMethod.POST, 
			headers = {"Content-type=application/json"})
	@ResponseBody
	public boolean mav(@RequestBody ReimbursementBean b[])
	{	
		reimbursementDao.insertExp(b);
		return false;
	}
	
	// VIEW EXPENSE
	
//	@RequestMapping(value="viewExpense/{rID}", method = RequestMethod.GET)
//	@ResponseBody
//	public ModelAndView viewExpense(@PathVariable("rID") int rID, RedirectAttributes red) {
//		List<ReimbursementBean> listExp = reimbursementDao.viewExp(rID);
//		red.addFlashAttribute("listExp", listExp);
//		return new ModelAndView ("redirect:/Reimbursement#modalReimbView");
//	}
	
	@RequestMapping(value="viewExpense/{rID}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView viewExpense(@PathVariable("rID") int rID) {
		ModelAndView mav = new ModelAndView("ess/list-reimb");
		List<ReimbursementBean> listExp = reimbursementDao.viewExp(rID);
		mav.addObject("listExp", listExp);
		return mav;
	}
	
	@RequestMapping(value="viewPrint/{rID}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView viewPrint(@PathVariable("rID") int rID) {
		ModelAndView mav = new ModelAndView("ess/list-reimb");
		List<ReimbursementBean> listExp = reimbursementDao.viewExp(rID);
		mav.addObject("listExp", listExp);
		return mav;
	}
	
	@RequestMapping(value = "deleteReimb/{id}", method = RequestMethod.GET)
	public ModelAndView deleteReimb(@PathVariable int id) {
		reimbursementDao.deleteExp(id);
		reimbursementDao.deleteReimb(id);
		return new ModelAndView("redirect:/Reimbursement");
	}
	

}
