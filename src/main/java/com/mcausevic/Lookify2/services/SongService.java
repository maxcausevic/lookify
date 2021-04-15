package com.mcausevic.Lookify2.services;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.mcausevic.Lookify2.models.Song;
import com.mcausevic.Lookify2.repositories.SongRepo;



@Service
public class SongService {
private final SongRepo songRepo;


	public SongService(SongRepo songRepo) {
		this.songRepo = songRepo;
	}
	
	public List<Song> allSongs(){
		return  songRepo.findAll();
	}
	
	public Song createSong(Song s) {
		return songRepo.save(s);
	}
		
	 public Song findSong(Long id) {
	        Optional<Song> optionalSong = songRepo.findById(id);
	        if(optionalSong.isPresent()) {
	            return optionalSong.get();
	        } else {
	            return null;
	        }
	        }
	        public Song updatesong(Long id, String title, String artist, Integer rating, String embeddedCode) {
	    		Song song1 = findSong(id);
	    		song1.setTitle(title);
	    		song1.setArtist(artist);
	    		song1.setRating(rating);
	    		songRepo.save(song1);
	    		return song1;
}
	        public void deleteSong(Long id) {
	    		Song song1 = findSong(id);
	    		songRepo.delete(song1);
	    		
	    	}
	 public List <Song> artistSearch(String search) {
		return songRepo.findByArtistContaining(search);
		 }
		 
	 public List<Song> topTen() {
	        return songRepo.findTop10ByOrderByRatingDesc();
	 }
	    }
	 

