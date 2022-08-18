package com.dviaje.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.dviaje.app.entity.Amigo;
import com.dviaje.app.service.IAmigoService;


@RestController
public class AmigoRestController {
	
	@Autowired
	IAmigoService amigoService;
	
	@GetMapping("/amigo")
	public List<Amigo> Amigo(){
		return amigoService.findAllAmigo();		
	}
	
	@GetMapping("/amigo/{id}")
	public Amigo AmigoById(@PathVariable Long id){
		return amigoService.findAmigoById(id);		
	}
	
	@PostMapping("/amigo")
	public Amigo newAmigo(@RequestBody Amigo Amigo){
		return amigoService.saveAmigo(Amigo);
	}
	
	@PutMapping("/amigo")
	public Amigo replaceAmigo(@RequestBody Amigo Amigo) {
		//Filtros para asegurar que esté un ID y exista
		return amigoService.saveAmigo(Amigo);
	}
	@DeleteMapping("/amigo/{id}")
	public Amigo borrarAmigo(@PathVariable Long id){
		return amigoService.deleteAmigoById(id);		
	}
	
	


	
 

}
