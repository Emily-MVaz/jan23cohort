package com.dojo.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dojo.dojosninjas.models.Dojo;
import com.dojo.dojosninjas.repositories.DojoRepo;

@Service
public class DojoService {
	@Autowired
	private DojoRepo repo;

	// CREATE
	public Dojo createDojo(Dojo e) {
		return repo.save(e);
	}

	// READ
	public List<Dojo> allDojos() {
		return repo.findAll();
	}


	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = repo.findById(id);
		if (optionalDojo.isPresent()) {
			return optionalDojo.get();
		}
		return null;
	}
}
