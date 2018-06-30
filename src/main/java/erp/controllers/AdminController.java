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
@RequestMapping(value="hrms/hrshiftsched/schedules/")


public class AdminController {
	
	@Autowired
	SchedDayDao schedDayDao;
	
	@RequestMapping(value = "save2",method= RequestMethod.POST)
	public ModelAndView assignShift(@ModelAttribute("shitf1") SchedDays schedDays)
	{
		schedDayDao.updatestatus2(schedDays);
		return new ModelAndView("redirect:/hrshiftsched/assign-shift/");
	}
	
	@RequestMapping(value = "edit2",method= RequestMethod.POST)
	public ModelAndView isAssigned(@ModelAttribute("isassigned") SchedDays schedDays)
	{
		schedDayDao.updatestatus2(schedDays);
		return new ModelAndView("redirect:/hrms/hrshiftsched/schedules/");
	}

}
