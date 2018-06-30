package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import java.util.List;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.LeaveRequestBean;
import erp.hrms.beans.ReimbursementBean;
import erp.hrms.dao.ReimbursementDao;


@Controller
public class ReimbursementController {
	
	@Autowired
	ReimbursementDao reimbDao;
	
	//REIMBURSEMENT FOR ADMIN
	@RequestMapping("/ReimbursementRequests")
	public ModelAndView reimbursementRequest() {
		ModelAndView mav = new ModelAndView();
		List<ReimbursementBean> listReimb = reimbDao.viewDeptReimb();
		mav.setViewName("depthead/reimb-request");
		mav.addObject("listReimb", listReimb);
		return mav;
	}
	
	// UPDATE
	@RequestMapping(value="updateReimbReq", method = RequestMethod.POST)
	public ModelAndView updateReimbReq(@ModelAttribute ("modelReimbReq") ReimbursementBean b) {
			reimbDao.updateReimbReq(b);
			reimbDao.insertJevInfo(b);
			reimbDao.insertJevDetails(b);
			reimbDao.insertSupportDocu(b);
			return new ModelAndView("redirect:/ReimbursementRequests");
	}
	
}