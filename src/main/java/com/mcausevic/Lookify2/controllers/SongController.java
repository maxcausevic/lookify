package com.mcausevic.Lookify2.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mcausevic.Lookify2.models.Song;
import com.mcausevic.Lookify2.services.SongService;

@Controller
public class SongController {
	private SongService songServ;
	public SongController(SongService songServ) {
		this.songServ = songServ;
	}
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> Song = songServ.allSongs();
	    model.addAttribute("songs", Song);
		model.addAttribute("song", new Song());
		//model.addAttribute("allSongs", songServ.getAll());
		return "dashboard.jsp";
	}
	@RequestMapping("/addSong")
	public String addSong() {
		return "add.jsp";
	}
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("song") Song song, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "redirect:/addSong";
		}
		songServ.createSong(song);
		return "redirect:/dashboard";
	}
	@RequestMapping(value="/dashboard/{id}", method=RequestMethod.POST)
	public String destroy(@PathVariable("id") Long id) {

		songServ.deleteSong(id);
		return "redirect:/dashboard";
	}
	 @RequestMapping("/song/{id}")
	 public String show(Model model, @PathVariable("id") Long id) {
	     Song song = songServ.findSong(id);
	     model.addAttribute("song", song);
	     return "show.jsp";
	 }
	@RequestMapping("/search/artist")
	public String searchArtist(Model model, @RequestParam("artist") String artist){
		List <Song> songs = songServ.artistSearch(artist);
		model.addAttribute("songs", songs);
		return "search.jsp";
	}
	@RequestMapping("/search/topTen")
    public String topTen(Model model) {
        List<Song> songs = songServ.topTen();
        model.addAttribute("songs", songs);
        return "topTen.jsp";
    }
}
