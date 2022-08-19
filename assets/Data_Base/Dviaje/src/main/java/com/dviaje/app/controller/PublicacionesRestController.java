package com.dviaje.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dviaje.app.entity.Publicaciones;
import com.dviaje.app.service.IPublicacionesService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class PublicacionesRestController {
	
	@Autowired
	IPublicacionesService publicacionesService;
	
	@GetMapping("/publicaciones")
	public List<Publicaciones> Publicaciones(){
		return publicacionesService.findAllPublicaciones();		
	}

	@GetMapping("/publicaciones/{id}")
	public Publicaciones PublicacionesById(@PathVariable Long id){
			return publicacionesService.findPublicacionesById(id);	
	}
	
	@PostMapping("/publicaciones")
	public Publicaciones newPublicaciones(@RequestBody Publicaciones publicaciones){
		return publicacionesService.savePublicaciones(publicaciones);
	}
	
	@PutMapping("/publicaciones")
	public Publicaciones replacePublicaciones(@RequestBody Publicaciones publicaciones) {
		//Filtros para asegurar que esté un ID y exista
		return publicacionesService.savePublicaciones(publicaciones);
	}
	@DeleteMapping("/publicaciones/{id}")
	public Publicaciones borrarPublicaciones(@PathVariable Long id){
		return publicacionesService.deletePublicacionesById(id);		
	}
	
	
	

}
