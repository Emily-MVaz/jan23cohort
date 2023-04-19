package com.dojo.dojosninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.dojo.dojosninjas.models.Dojo;
import com.dojo.dojosninjas.models.Ninja;
import com.dojo.dojosninjas.services.DojoService;
import com.dojo.dojosninjas.services.NinjaService;

@Controller
public class HomeController {
	@Autowired 
	DojoService dojoService;
	@Autowired
	NinjaService ninjaService;

	@GetMapping("/dojos/new")
	public String index(@ModelAttribute(value = "dojo") Dojo dojo) {
		return "newDojo.jsp";
	}

	@PostMapping("/dojos/create")
	public String createDojo(@Valid @ModelAttribute(value = "dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			return "newDojo.jsp";
		}
		dojoService.createDojo(dojo);
		return "redirect:/dojos/new";
	}

	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "newNinja.jsp";
	}

	@PostMapping("/ninjas/create")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("dojos", dojoService.allDojos());
			return "newNinja.jsp";
		}
		ninjaService.createNinja(ninja);
		return "redirect:/dojos/new";
	}

	@GetMapping("/dojos/{id}")
	public String viewOne(@PathVariable(value = "id") Long id, Model model) {
		model.addAttribute("dojo", dojoService.findDojo(id));
		return "location.jsp";
	}
}
