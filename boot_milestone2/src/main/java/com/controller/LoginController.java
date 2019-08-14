package com.controller;

import org.springframework.ui.ModelMap;

import com.model.Login;

public interface LoginController {
	public String login(ModelMap model);
	public String loginconnect(Login login,ModelMap model);
	
}
