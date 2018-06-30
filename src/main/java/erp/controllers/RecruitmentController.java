package erp.controllers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.ApplicantDao;
import erp.hrms.dao.LoginDao;
import erp.hrms.dao.RecruitmentDao;
import erp.hrms.beans.LeaveRequestBean;
import erp.hrms.beans.RecruitmentBean;
import erp.hrms.beans.ApplicantBeans;

@Controller
public class RecruitmentController {

	@Autowired
	LoginDao loginDao;
	
	@Autowired
	ApplicantDao applicantDao;

	@Autowired
	RecruitmentDao recruitmentDao;
	
	//***************APPLICANT*******************/	
	@RequestMapping(value="submitApplication", method = RequestMethod.POST)
		public ModelAndView submitApp(@ModelAttribute("modelApplication") RecruitmentBean app) {
			applicantDao.submitApplication(app);
			return new ModelAndView("redirect:/index");
		}
	
	//**************HIRING MANAGER*****************/
	@RequestMapping("/JobRequestApproval")
	public ModelAndView ListJobRequest() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hiring-manager/JobPostApproval");
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		List<RecruitmentBean> listJobReq = recruitmentDao.viewJobReq();
		mav.addObject("viewJobReq", listJobReq);
		return mav;
	}	
	
	@RequestMapping("/Queries")
	public ModelAndView Queries() {	
		ModelAndView mav = new ModelAndView();
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		mav.setViewName("applicant/queries_jobpost");
		return mav;
	}	
	
	// Approval of Job Post Requests
	@RequestMapping(value="updatePost", method = RequestMethod.POST)
	public ModelAndView updatePost(@ModelAttribute ("modelUpdatePost") RecruitmentBean b) {
			recruitmentDao.updateJobPost(b);
			return new ModelAndView("redirect:/JobRequestApproval");
	}
	
	/*
	 * 
	 * DEPARTMENT HEAD
	 * 
	 */
	@RequestMapping("/JobPostRequest")
	public ModelAndView JobPostRequest() {	
		ModelAndView mav = new ModelAndView();
		List<RecruitmentBean> listJob = recruitmentDao.dropdownJob();
		mav.setViewName("depthead/JobPostRequest");		
		mav.addObject("listJob", listJob);
		mav.addObject("viewName", loginDao.name);
		mav.addObject("viewRole", loginDao.role);
		mav.addObject("getID", loginDao.id);
		return mav;
	}
	
	// Submit Job Request
	@RequestMapping(value="submitJobReq", method = RequestMethod.POST)
	public ModelAndView submitJobReq(@ModelAttribute ("modelJobReq") RecruitmentBean request) {
			recruitmentDao.addJobPost(request);
			return new ModelAndView("redirect:/JobPostRequest");
	}


	
}
