package ecom.controller.user;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/account**")
public class AccountController {
	
	@RequestMapping(value = "welcome", method = RequestMethod.GET)
	public String welcome(ModelMap modelMap, Principal principal) {
		String name = principal.getName(); //get logged in username
	    modelMap.addAttribute("username", name);
		return "redirect:../home.html";
	}
	
}
