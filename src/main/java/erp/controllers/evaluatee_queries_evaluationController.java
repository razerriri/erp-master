package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.evaluatee_queries_evaluationBean;
import erp.hrms.dao.evaluatee_queries_evaluationDao;

@Controller
public class evaluatee_queries_evaluationController {

	@Autowired
	evaluatee_queries_evaluationDao evaluatee_queries_evaluationDao;
	
	@RequestMapping("hrms/hr_performance_management/evaluatee_queries_evaluation/")
	public ModelAndView evaluatee_queries_evaluation() {
		List<evaluatee_queries_evaluationBean> list = evaluatee_queries_evaluationDao.e_q_e();		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hr_performance_management/evaluatee_queries_evaluation");	
		/*mav.addObject("list", list);	*/

		return mav;
	}
}
