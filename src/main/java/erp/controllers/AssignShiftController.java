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
@RequestMapping(value="hrms/hrshiftsched/assign-shift/")


public class AssignShiftController {
	
	@Autowired
	SchedDayDao schedDayDao;
	
	@RequestMapping(value = "save",method= RequestMethod.POST)
	public ModelAndView assignShift(@ModelAttribute("shitf1") SchedDays schedDays)
	{
		schedDayDao.save2(schedDays);
		return new ModelAndView("redirect:/hrms/hrshiftsched/assign-shift/");
	}
	
	@RequestMapping(value = "edit",method= RequestMethod.POST)
	public ModelAndView editShift(@ModelAttribute("shitf2") SchedDays schedDays)
	{
		schedDayDao.edit2(schedDays);
		return new ModelAndView("redirect:/hrms/hrshiftsched/assign-shift/");
	}
}
