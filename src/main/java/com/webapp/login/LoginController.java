package com.webapp.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {
	@Autowired
	LoginService service;
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginpage()
	{
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginHandler(@RequestParam String name,@RequestParam String password,ModelMap model)
	{
		boolean isUser = service.authenticate(name, password);
		if(!isUser)
		{
			model.put("error", "Invalid Credentials");
			return "login";
		}
		//System.out.println(name);
		model.put("name", name);
		return "landing";
	}
	
	
}
