package com.lwyykj.core.user.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lwyykj.user.service.UserService;
@Controller
public class UserController {
	@Resource
	private UserService userService;
	@RequestMapping("/x")
	public String index(Model model){
		model.addAttribute("msg", userService.findById(1).getNickname());
		return "index";
	}
}
