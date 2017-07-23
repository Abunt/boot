package com.wfyvv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wfyyu on 2017-07-23 21:55.
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/list")
	public String list(){
		return "user/list";
	}

	@RequestMapping("/add")
	public String add(){
		return "user/add";
	}
}
