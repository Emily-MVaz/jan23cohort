package com.dojo.savetravels.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dojo.savetravels.models.Expense;
import com.dojo.savetravels.repositories.ExpenseRepo;

@Service
public class ExpenseService {

	@Autowired
	private ExpenseRepo expenseRepo;

	// create
	public Expense createExpense(Expense i) {
		return expenseRepo.save(i);
	}

	// read all
	public List<Expense> allExpenses() {
		return expenseRepo.findAll();
	}

	// read one
	public Expense getOne(Long id) {
		return expenseRepo.findById(id).orElse(null);
	}

	// update
	public Expense updateExpense(Expense i) {
		return expenseRepo.save(i);
	}

	// delete
	public void deleteOne(Long id) {
		expenseRepo.deleteById(id);
	}
}