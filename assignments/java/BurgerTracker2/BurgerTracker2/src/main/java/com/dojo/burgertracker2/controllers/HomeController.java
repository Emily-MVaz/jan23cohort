package com.dojo.burgertracker2.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.dojo.burgertracker2.models.Burger;
import com.dojo.burgertracker2.services.BurgerServices;

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
	
	@GetMapping("/burger/edit/{id}")
	public String index(@PathVariable("id") Long id,@ModelAttribute("burger") Burger burger, Model model) {
		model.addAttribute("burger", burgerServices.getOne(id));
		return "edit.jsp";
	}
	
	
	@PutMapping("/burger/update/{id}")
	public String updateItem(@PathVariable("id") Long id, @Valid @ModelAttribute("burgerForm") Burger burger, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("burger", burgerServices.getOne(id));
			return "edit.jsp";
		}
		else {
			burgerServices.updateBurger(burger);
			return "redirect:/";
		}
	}
	
}
