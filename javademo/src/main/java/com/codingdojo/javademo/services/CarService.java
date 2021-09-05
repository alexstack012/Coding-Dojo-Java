package com.codingdojo.javademo.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.javademo.models.Car;
import com.codingdojo.javademo.repositories.CarRepository;


@Service
public class CarService {

	@Autowired
	private CarRepository carRepo;
	
	//create
	public Car createCar(Car car) {
		return carRepo.save(car);
	}
	//get one car
	public Car getOneCar(Long id) {
		Optional<Car> optionalCar = this.carRepo.findById(id);
		if(optionalCar.isPresent()) {
		return optionalCar.get();
		} else {
			return null;
		}
	}
	//get all cars
	public List<Car> getAllCars(){
		return carRepo.findAll();
	}
	//update a car
	public Car updateCar(Car car) {
		return carRepo.save(car);
	}
	//delete a car
	public void deleteCar(Long id) {
		this.carRepo.deleteById(id);
	}
}
