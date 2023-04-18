package com.dojo.burgertracker1.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.dojo.burgertracker1.models.Burger;
import com.dojo.burgertracker1.services.BurgerServices;

@Controller
public class HomeController {
	@Autowired
	private BurgerServices burgerServices;

	@GetMapping("/")
	public String index(@ModelAttribute("burger") Burger burger, Model model) {
		model.addAttribute("allBurgers", burgerServices.allBurgers());
		return "index.jsp";
	}

	@PostMapping("/create")
	public String createBurger(@Valid @ModelAttribute("burgerForm") Burger burger, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("allBurgers", burgerServices.allBurgers());
			return "index.jsp";
		} else {
			burgerServices.createBurger(burger);
			return "redirect:/";
		}
	}
}
