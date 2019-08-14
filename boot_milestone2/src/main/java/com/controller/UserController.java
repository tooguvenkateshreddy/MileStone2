package com.controller;

import java.util.List;

import org.springframework.ui.ModelMap;

import com.model.*;

public interface UserController {
	 public String registerUser(ModelMap model) throws Exception;
	 public User updateUser(User user)throws Exception;
	 public List<User> getUserList();
	 
}
