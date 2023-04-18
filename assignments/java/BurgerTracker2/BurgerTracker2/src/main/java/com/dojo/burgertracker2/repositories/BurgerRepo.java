package com.dojo.burgertracker2.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.burgertracker2.models.Burger;

@Repository
public interface BurgerRepo extends CrudRepository<Burger, Long> {
	List<Burger> findAll();

}