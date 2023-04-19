package com.dojo.bookclub.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.dojo.bookclub.models.LoginUser;
import com.dojo.bookclub.models.User;
import com.dojo.bookclub.services.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService service;

	@GetMapping("/")
	public String index(@ModelAttribute("user") User user, @ModelAttribute("loginUser") LoginUser loginUser) {
		return "index.jsp";
	}

	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("user") User user, BindingResult result,
			@ModelAttribute("loginUser") LoginUser loginUser, HttpSession session) {
		service.register(user, result);
		if (result.hasErrors()) {
			return "index.jsp";
		}
		session.setAttribute("UUID", user.getId());
		return "redirect:/books";
	}

	@PostMapping("/login")

	public String login(@Valid @ModelAttribute("loginUser") LoginUser loginUser, BindingResult result,
			@ModelAttribute("user") User user, HttpSession session) {
		User i = service.login(loginUser, result);
		if (result.hasErrors()) {
			return "index.jsp";
		}
		session.setAttribute("UUID", i.getId());
		return "redirect:/books";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
