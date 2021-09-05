package com.codingdojo.javademo.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.javademo.models.Car;


@Repository
public interface CarRepository extends CrudRepository<Car, Long> {
	List<Car> findAll();
}
