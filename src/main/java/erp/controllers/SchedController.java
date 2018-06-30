package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.SchedDayDao;
import erp.hrms.beans.SchedDays;

@Controller
@RequestMapping(value="dept/requests/")
public class SchedController 
{
	
	@Autowired
	 SchedDayDao schedDayDao;
	
	
	
	@RequestMapping(value = "edit",method= RequestMethod.POST)
	public ModelAndView sApproves(@ModelAttribute("sapproves") SchedDays schedDays)
	{
		schedDayDao.updatestatus(schedDays);
		return new ModelAndView("redirect:/dept/requests/");
	}
	
	@RequestMapping(value = "edit1",method= RequestMethod.POST)
	public ModelAndView sDisapproves(@ModelAttribute("sdisapproves") SchedDays schedDays)
	{
		schedDayDao.updatestatus(schedDays);
		return new ModelAndView("redirect:/dept/requests/");
	}
	
	
	
}
