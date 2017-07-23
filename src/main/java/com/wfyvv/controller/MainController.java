package com.wfyvv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wfyyu on 2017-07-23 21:19.
 */
@Controller
public class MainController {

	@RequestMapping("/")
	public String main(){
		return "index";
	}

	@GetMapping("/login")
	public String toLogin(){
		return "login";
	}

	@PostMapping("/login")
	public String login() {
		return "";
	}

	@RequestMapping("/unauthorized")
	public String unauthorized(){
		return "403";
	}
}
