package com.juanjose.mvc.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.juanjose.mvc.models.License;
import java.util.List;

@Repository
public interface LicenseRepositoy extends CrudRepository<License, Long>{
	List<License> findTopByOrderByNumberDesc();
	
}
