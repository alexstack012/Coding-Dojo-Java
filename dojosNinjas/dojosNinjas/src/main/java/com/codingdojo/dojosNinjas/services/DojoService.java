package com.codingdojo.dojosNinjas.services;


import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;
import com.codingdojo.dojosNinjas.models.Dojo;
import com.codingdojo.dojosNinjas.repositories.DojoRepo;

@Service
public class DojoService {
	// adding the Dojo repository as dependency
	private final DojoRepo dojoRepo;

	public DojoService(DojoRepo dojoRepo) {
		this.dojoRepo = dojoRepo;
	}

	public List<Dojo> getAllDojos() {
		return (List<Dojo>) dojoRepo.findAll();
	}

	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}

	public Dojo findDojoById(Long id) {
		Optional<Dojo> findDojo = dojoRepo.findById(id);
		if (findDojo.isPresent()) {
			return findDojo.get();
		} 
		else {
			return null;
		}
	}
}