package com.codingdojo.dojosNinjas.services;


import org.springframework.stereotype.Service;
import com.codingdojo.dojosNinjas.models.Ninja;
import com.codingdojo.dojosNinjas.repositories.NinjaRepo;

@Service
public class NinjaService {
	//adding the ninja repository dependency
	private final NinjaRepo ninjaRepo;
	public NinjaService (NinjaRepo ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	//create ninja
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
}
