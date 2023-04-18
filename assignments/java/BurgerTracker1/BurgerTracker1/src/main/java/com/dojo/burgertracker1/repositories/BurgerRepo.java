package com.dojo.burgertracker1.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.burgertracker1.models.Burger;

@Repository
public interface BurgerRepo extends CrudRepository<Burger, Long> {
	List<Burger> findAll();

}
