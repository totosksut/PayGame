package com.example.pay.game.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("/login")
	String login() {
		System.out.println("Login Ctrl");
		return "login";
	}
}
