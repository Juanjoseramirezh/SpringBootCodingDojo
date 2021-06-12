package com.juanjose.mvc.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.juanjose.mvc.models.Song;

public interface LokifyRepository extends CrudRepository<Song, Long>{
	
	List<Song> findAll();
	
	List<Song> findByArtist(String artist);
	
	List<Song> findTop10ByOrderByRatingDesc();	
}
