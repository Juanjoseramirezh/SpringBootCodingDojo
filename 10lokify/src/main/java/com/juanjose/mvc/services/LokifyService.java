package com.juanjose.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.juanjose.mvc.models.Song;
import com.juanjose.mvc.repositories.LokifyRepository;

@Service
public class LokifyService {
	private final LokifyRepository lokifyRepositoy;
	
	public LokifyService(LokifyRepository lokifyRepository) {
		this.lokifyRepositoy = lokifyRepository;
	}
	
	//SHOW ALL SONG
	public List<Song> allSong(){
		return lokifyRepositoy.findAll();
	}
	
	//SHOW A SONG
	public Song findSong(Long id) {
		Optional<Song> optionalSong = lokifyRepositoy.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}else {
			return null;
		}
	}
	
	// CREATE A SONG
	public Song addSong(Song s) {
		return lokifyRepositoy.save(s);
	}
	
	// DELETE A SONG
	public void deleteSong(Long id) {
		lokifyRepositoy.deleteById(id);
	}
	
	// GET TOP TEN
	
	public List<Song> getTopTen(){
		return lokifyRepositoy.findTop10ByOrderByRatingDesc();
	}
	
	public List<Song> getSearchSong(String artist){
		return lokifyRepositoy.findByArtist(artist);
	}
}
