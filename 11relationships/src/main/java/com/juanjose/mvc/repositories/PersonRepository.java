package com.juanjose.mvc.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.juanjose.mvc.models.Person;
import java.util.List;



@Repository
public interface PersonRepository extends CrudRepository<Person, Long>{
	
	List<Person> findAll();
}
