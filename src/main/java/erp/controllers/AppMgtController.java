package erp.controllers;
import java.util.List;

import javax.swing.JOptionPane;

import java.text.*;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import erp.hrms.dao.RegistrationDao;
import erp.hrms.beans.Registration;
import erp.hrms.dao.ApplicantDao;
import erp.hrms.dao.LoginDao;
import erp.hrms.beans.ApplicantBeans;
import erp.hrms.beans.RecruitmentBean;

@Controller
public class AppMgtController {
	
	@Autowired 
	RegistrationDao registrationDao;
	
	@Autowired
	ApplicantDao applicantDao;
	
	@Autowired
	LoginDao loginDao;
	
	
	@RequestMapping("/Registration")
	public ModelAndView Registration() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("login/Registration");
		return mav;
	}
	
	@RequestMapping(value="submitApp", method = RequestMethod.POST)
	public ModelAndView submitApp(@ModelAttribute("modelApp") Registration app) {
		registrationDao.insertApp(app);
		return new ModelAndView("redirect:/Registration");
	}

	//*****************PSB******************/
	@RequestMapping("/PSB")
	public ModelAndView PSB() {	
		ModelAndView mav = new ModelAndView();	
		List<ApplicantBeans> dropApp = applicantDao.dropdownApp();	
		mav.addObject("dropApp", dropApp); 
		mav.setViewName("hiring-manager/PSB");
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		return mav;
	}
	
	@RequestMapping(value="submitPSB", method = RequestMethod.POST)
	public ModelAndView submitPSB(@ModelAttribute("modelPSB") ApplicantBeans app) {
		applicantDao.submitPSB(app);
		applicantDao.updateAppScore(app);
		return new ModelAndView("redirect:/PSB");
	}
	
	
	//*************APP POOL******************/
	@RequestMapping("/AppPool")
	public ModelAndView AppPool() {
		ModelAndView mav = new ModelAndView("applicant/AppPool");
		List<ApplicantBeans> listApp = applicantDao.viewApplication();
		mav.setViewName("hiring-manager/AppPool");
		mav.addObject("listAppJSP", listApp);
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		return mav;
	}
	
	//Edit Phase APP POOl
	@RequestMapping(value="updateAppPool", method = RequestMethod.POST)
	public ModelAndView updateAppPool(@ModelAttribute ("modelAppPool") ApplicantBeans b) {
			applicantDao.updateApplication(b);
			return new ModelAndView("redirect:/AppPool");
	}
	
	//*****************HIRED*******************/
	@RequestMapping("/Hired")
	public ModelAndView Hired() {	
		ModelAndView mav = new ModelAndView();	
		List<ApplicantBeans> listHired = applicantDao.viewHired();
		mav.setViewName("hiring-manager/Hired");
		mav.addObject("listHired", listHired);
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		return mav;
	}
	
	@RequestMapping(value="updateHired", method = RequestMethod.POST)
	public ModelAndView updateHired(@ModelAttribute ("modelHired") ApplicantBeans b) {
			applicantDao.updateHired(b);
			applicantDao.submitEmployee(b);
			applicantDao.submitEmpInfo(b);
			applicantDao.submitEmpJob(b);
			applicantDao.initEmpLeave(b);
			return new ModelAndView("redirect:/Hired");
	}	
}