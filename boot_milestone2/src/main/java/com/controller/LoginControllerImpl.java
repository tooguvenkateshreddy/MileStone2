package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Login;
import com.model.User;
import com.service.UserService;
@Controller
public class LoginControllerImpl implements LoginController {
	@Autowired
	private UserController userController;
	@RequestMapping(path="login", method = RequestMethod.GET)
	public String login(ModelMap model)
	{
		Login login=new Login();
		model.addAttribute("login", login);
		return "login";
	}
	@RequestMapping(path="login", method = RequestMethod.POST)
	public String loginconnect(Login login,ModelMap model)
	{
		List<User> list=userController.getUserList();
		
		
		User user1=null;
		for(User user:list)
		{
			if(login.getUserName().equalsIgnoreCase(user.getUserName())&&login.getPassword().equals(user.getPassword()))
			{
				user1=user;
			}
		}
		if(user1!=null)
			return "userLandingPage";
		else
			return "redirect:login";
		
	}

}
