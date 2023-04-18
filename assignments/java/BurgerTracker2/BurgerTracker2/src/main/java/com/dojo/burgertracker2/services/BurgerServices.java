package com.dojo.burgertracker2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dojo.burgertracker2.models.Burger;
import com.dojo.burgertracker2.repositories.BurgerRepo;

@Service
public class BurgerServices {

	@Autowired
	private BurgerRepo burgerRepo;

	// create
	public Burger createBurger(Burger i) {
		return burgerRepo.save(i);
	}

	// read all
	public List<Burger> allBurgers() {
		return burgerRepo.findAll();
	}

	// read one
	public Burger getOne(Long id) {
		return burgerRepo.findById(id).orElse(null);
	}

	// update
	public Burger updateBurger(Burger i) {
		return burgerRepo.save(i);
	}

	// delete
	public void deleteOne(Long id) {
		burgerRepo.deleteById(id);
	}
}