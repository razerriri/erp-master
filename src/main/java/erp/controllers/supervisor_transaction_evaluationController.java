package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.supervisor_transaction_evaluationBean;
import erp.hrms.dao.supervisor_transaction_evaluationDao;

@Controller
public class supervisor_transaction_evaluationController {

	@Autowired
	supervisor_transaction_evaluationDao supervisor_transaction_evaluationDao;
	
	@RequestMapping("hrms/hr_performance_management/supervisor_transaction_evaluation/")
	public ModelAndView supervisor_transaction_evaluation() {
		List<supervisor_transaction_evaluationBean> list = supervisor_transaction_evaluationDao.s_t_e();		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hr_performance_management/supervisor_transaction_evaluation");	
		mav.addObject("list", list);	

		return mav;
	}
}