package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.SchedDays;
import erp.hrms.dao.SchedDayDao;

@Controller
@RequestMapping(value="ess/schedule/")
public class ESSControllerSched {
	
	@Autowired
	SchedDayDao schedDayDao;
	
	SchedDays sched = new SchedDays();
	
	//***********SHIFT AND SCHEDULING************/
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public ModelAndView schedDays(@ModelAttribute("scheddays")SchedDays schedDays) {
		schedDayDao.save(schedDays);
		return new ModelAndView("redirect:/ess/schedule/");
	}
	
	@RequestMapping(value = "edit",method= RequestMethod.POST)
	public ModelAndView isAssigned(@ModelAttribute("isassigned") SchedDays schedDays)
	{
		schedDayDao.updatestatus(schedDays);
		return new ModelAndView("redirect:/ess/schedule/");
	}

}
