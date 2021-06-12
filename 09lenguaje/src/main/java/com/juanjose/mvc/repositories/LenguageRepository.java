package com.juanjose.mvc.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.juanjose.mvc.models.Lenguage;

public interface LenguageRepository extends CrudRepository<Lenguage, Long> {

	List<Lenguage> findAll();
	
}
