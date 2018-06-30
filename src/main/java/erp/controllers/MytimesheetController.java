package erp.controllers;
//import java.lang.ProcessBuilder.Redirect;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import erp.hrms.dao.TimesheetApproveDao;
import erp.hrms.beans.Department;
import erp.hrms.beans.Tuser;

@Controller
@RequestMapping(value="hr-timesheet/My_Timesheet/")
public class MytimesheetController 
{
	
	@Autowired
	TimesheetApproveDao timesheetapproveDao;
//	
//	@RequestMapping(value="save", method = RequestMethod.POST)
//	public ModelAndView savetimesheet(@ModelAttribute("wta") Tuser tuser) {
//		timesheetapproveDao.savet(tuser);
//		return new ModelAndView("redirect:/hr-timesheet/My_Timesheet/");
//	}
//	
//	@RequestMapping(value="save1", method = RequestMethod.POST)
//	public ModelAndView savetimesheetw(@ModelAttribute("wta") Tuser tuser) {
//		timesheetapproveDao.savet1(tuser);
//		return new ModelAndView("redirect:/hr-timesheet/My_Timesheet/");
//	}
}
