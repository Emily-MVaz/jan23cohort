package com.dojo.savetravels.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.dojo.savetravels.models.Expense;
import com.dojo.savetravels.services.ExpenseService;


@Controller
public class HomeController {
	
	@Autowired
	private ExpenseService expenseService;

	@GetMapping("/")
	public String index(@ModelAttribute("expense") Expense expense, Model model) {
		model.addAttribute("allExpenses", expenseService.allExpenses());
		return "index.jsp";
	}

	@PostMapping("/create")
	public String createTravel(@Valid @ModelAttribute("expenseForm") Expense expense, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("allExpense", expenseService.allExpenses());
			return "index.jsp";
		} else {
			expenseService.createExpense(expense);
			return "redirect:/";
		}
	}
	
	@GetMapping("/expense/edit/{id}")
	public String index(@PathVariable("id") Long id,@ModelAttribute("expense") Expense expense, Model model) {
		model.addAttribute("expense", expenseService.getOne(id));
		return "edit.jsp";
	}
	
	
	@PutMapping("/expense/update/{id}")
	public String updateItem(@PathVariable("id") Long id, @Valid @ModelAttribute("expenseForm") Expense expense, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("expense", expenseService.getOne(id));
			return "edit.jsp";
		}
		else {
			expenseService.updateExpense(expense);
			return "redirect:/";
		}
	}
	
	@GetMapping("/expense/view/{id}")
	public String view(@PathVariable("id") Long id,@ModelAttribute("expense") Expense expense, Model model) {
		model.addAttribute("expense", expenseService.getOne(id));
		return "view.jsp";
	}
	
	@DeleteMapping("/expense/delete/{id}")
	public String deleteExpense(@PathVariable("id") Long id) {
		expenseService.deleteOne(id);
		return "redirect:/";
	}
	
}
