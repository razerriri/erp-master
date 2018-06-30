package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.LeaveSetupBean;
import erp.hrms.dao.LeaveSetupDao;
import erp.hrms.dao.LoginDao;

@Controller
public class LeaveSetupController {

	@Autowired
	LeaveSetupDao LeaveSetupDao;
	
	@Autowired
	LoginDao loginDao;
	
	@RequestMapping("/leaveSetup")
	public ModelAndView leaveSetup() {
		List<LeaveSetupBean> listLeave = LeaveSetupDao.viewLeave();
		List<LeaveSetupBean> listDept = LeaveSetupDao.listDept();
		List<LeaveSetupBean> listJob = LeaveSetupDao.listJob();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("leave/leave_admin_setup_view");
		mav.addObject("viewTitle", "Leave Settings");	
		mav.addObject("listLeave", listLeave);
		mav.addObject("listJob", listJob);	
		mav.addObject("listDept", listDept);
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		return mav;
	}	
	
	// SUBMIT
	@RequestMapping(value="submitLeave", method = RequestMethod.POST)
	public ModelAndView saveLeave(@ModelAttribute ("modelLeaveSetup") LeaveSetupBean lve) 
	{
		LeaveSetupDao.addLeave(lve);
		return new ModelAndView("redirect:/leaveSetup");
	}
	
	@RequestMapping(value="deleteLeave/{id}", method = RequestMethod.POST)
	public ModelAndView deleteLeave(@PathVariable int id) 
	{
		LeaveSetupDao.deleteLeave(id);
		return new ModelAndView("redirect:/leaveSetup");
	}
	
}
