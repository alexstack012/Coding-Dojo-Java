package com.codingdojo.dojosNinjas.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.codingdojo.dojosNinjas.models.Ninja;

@Repository
public interface NinjaRepo extends CrudRepository<Ninja, Long>{

}