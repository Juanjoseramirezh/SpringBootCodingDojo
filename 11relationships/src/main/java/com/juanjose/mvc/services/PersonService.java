package com.juanjose.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.juanjose.mvc.models.Person;
import com.juanjose.mvc.repositories.PersonRepository;

@Service
public class PersonService {
	private final PersonRepository personRepository;
	
	public PersonService(PersonRepository personRepository) {
		this.personRepository = personRepository;
	}
	
	public List<Person> allPerson(){
		return personRepository.findAll();
	}
	
	public Person addPerson(Person p) {
		return personRepository.save(p);
	}
	
	public Person getPerson(Long id) {
		Optional<Person> person = personRepository.findById(id);
		return person.get();
	}
}
