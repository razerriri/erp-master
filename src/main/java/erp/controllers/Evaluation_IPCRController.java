package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Evaluation_IPCRBean;
import erp.hrms.dao.Evaluation_IPCRDao;

@Controller
public class Evaluation_IPCRController {

	@Autowired
	Evaluation_IPCRDao Evaluation_IPCRDao;

	@RequestMapping(value = "saveIPCR",method = RequestMethod.POST)
	public ModelAndView saveIPCR(@ModelAttribute("IPCR")Evaluation_IPCRBean IPCR) {
		Evaluation_IPCRDao.save(IPCR);
		return new ModelAndView("redirect:hr_performance_management/supervisor_evaluation_ipcr");
	}
}