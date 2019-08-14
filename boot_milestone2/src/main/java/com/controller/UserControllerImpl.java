package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Login;
import com.model.User;
import com.service.*;
@Controller
public class UserControllerImpl implements UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(path="/registerUser", method = RequestMethod.GET)
	public String registerUser(ModelMap model) throws Exception {
		User user=new User();
		model.addAttribute("user1",user);
		return "userRegistration";
	}
	@RequestMapping(path="/registerUser", method = RequestMethod.POST)
	public String register(User user,ModelMap model)
	{
		System.out.println(user);
		
		try {
			userService.registerUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:login";
	}

	public User updateUser(User user) throws Exception {
	
		return userService.updateUser(user);
	}
	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return userService.getUserList();
	}
	
}
