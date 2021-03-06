package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Shift;
import erp.hrms.dao.ShiftDao;

@Controller
@RequestMapping(value="system-setup/time-work/")
public class ShiftController {

	@Autowired
	ShiftDao shiftDao;
	
	//save
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public ModelAndView shift(@ModelAttribute("shift")Shift shift) {
		shiftDao.save(shift);
		return new ModelAndView("redirect:/system-setup/time-work/");
	}
	
	//update
		@RequestMapping(value = "edit", method = RequestMethod.POST)
		public ModelAndView updateShift(@ModelAttribute("updateshift") Shift shift) {
			shiftDao.update(shift);
			return new ModelAndView("redirect:/system-setup/time-work/");
		}
	
	//delete
		@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
		public ModelAndView deleteShift(@PathVariable int id) {
			shiftDao.delete(id);
			return new ModelAndView("redirect:/system-setup/time-work/");
		}
}
