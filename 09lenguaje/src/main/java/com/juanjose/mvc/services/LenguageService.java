package com.juanjose.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.juanjose.mvc.models.Lenguage;
import com.juanjose.mvc.repositories.LenguageRepository;



@Service
public class LenguageService {
	private final LenguageRepository lenguageReposity;

	public LenguageService(LenguageRepository lenguageRepository) {
		this.lenguageReposity = lenguageRepository;
	}
	
	// MOSTRAR TODOS LOS LENGUAJES
	public List<Lenguage> AllLenguage(){
		return lenguageReposity.findAll();
	}
	
	// MOSTRAR UN LENGUAJE EN ESPECIFICO POR SU ID
	public Lenguage findLenguage(Long id) {
		Optional<Lenguage> optionalLenguage = lenguageReposity.findById(id);
		if(optionalLenguage.isPresent()) {
			return optionalLenguage.get();
		}else {
			return null;
		}
	}
	// MODIFICAR UN LENGUAJE
	public Lenguage updateLenguage(Lenguage l) {
		return lenguageReposity.save(l);
	}
	
	public Lenguage updateLenguage(Long id, String name, String creator, String currentVersion) {
		Optional<Lenguage> updateLenguage = lenguageReposity.findById(id);
		updateLenguage.get().setName(name);
		updateLenguage.get().setCreator(creator);
		updateLenguage.get().setCurrentVersion(currentVersion);
		return updateLenguage.get();
	}
	
	// CREAR UN LENGUAJE
	public Lenguage createLenguage(Lenguage l) {
		return lenguageReposity.save(l);
	}
	
	// ELIMINAR UN LENGUAJE
	public void delete(Long id) {
		lenguageReposity.deleteById(id);
	}
}
