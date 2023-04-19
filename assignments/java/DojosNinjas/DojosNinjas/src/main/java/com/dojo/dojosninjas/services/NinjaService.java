package com.dojo.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dojo.dojosninjas.models.Ninja;
import com.dojo.dojosninjas.repositories.NinjaRepo;

@Service
public class NinjaService {

	@Autowired
	private NinjaRepo repo;

	// CREATE
	public Ninja createNinja(Ninja i) {
		return repo.save(i);
	}

	// READ
	public List<Ninja> allNinjas() {
		return repo.findAll();
	}

	public Ninja getNinja(Long id) {
		Optional<Ninja> optionalNinja = repo.findById(id);
		if (optionalNinja.isPresent()) {
			return optionalNinja.get();
		}
		return null;
	}
}
