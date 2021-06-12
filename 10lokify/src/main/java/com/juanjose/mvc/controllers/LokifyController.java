package com.juanjose.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.juanjose.mvc.models.Song;
import com.juanjose.mvc.services.LokifyService;

@Controller
public class LokifyController {
	private final LokifyService lokifyService;

	public LokifyController(LokifyService lokifyService) {
		this.lokifyService = lokifyService;
	}

	@RequestMapping("/")
	public String index(Model model) {
		return "/lok/index.jsp";
	}

	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = lokifyService.allSong();
		model.addAttribute("songs", songs);
		return "/lok/dashboard.jsp";
	}

	@RequestMapping("/songs/new")
	public String addNew(@ModelAttribute("addNew") Song song, Model model) {
		return "/lok/new.jsp";
	}

	@RequestMapping(value = "/process", method = RequestMethod.POST)
	public String process(@Valid @ModelAttribute("addNew") Song song, BindingResult result, Model model) {
		if (result.hasErrors()) {
			List<Song> songs = lokifyService.allSong();
			model.addAttribute("songs", songs);
			return "/lok/new.jsp";
		} else {
			lokifyService.addSong(song);
			return "redirect:/dashboard";
		}
	}
	
	@RequestMapping("/songs/{id}")
	public String showOneSong(@PathVariable("id") Long id, Model model) {
		Song song = lokifyService.findSong(id);
		model.addAttribute("song", song);
		return "/lok/song.jsp";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		lokifyService.deleteSong(id);
		return "redirect:/dashboard";
	}
	
	@RequestMapping("/search/topten")
	public String topten(Model model) {
		List<Song> songs = lokifyService.getTopTen();
		model.addAttribute("songs", songs);
		return "/lok/topten.jsp";
	}
	
	
	@RequestMapping("/search/{artist}")
	public String search(@PathVariable("artist") String artist, Model model) {
		List<Song> songs = lokifyService.getSearchSong(artist);
		model.addAttribute("artist", artist);
		model.addAttribute("songs", songs);
		return "/lok/search.jsp";
		
	}
	
	@PostMapping("/search")
	public String search(@RequestParam("artist") String artist) {
		System.out.print("ENTREEEEE ACAAA!!!!!");
		return "redirect:/search/"+artist;
	}
	
	
}
