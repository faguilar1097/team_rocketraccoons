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

import com.dviaje.app.entity.ImagenesHasPublicaciones;
import com.dviaje.app.service.IImagenesHasPublicacionesService;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class ImagenesHasPublicacionesController {

	@Autowired
	IImagenesHasPublicacionesService imagenesHasPublicacionesService;
	
	@GetMapping("/imagenesHasPublicaciones")
	public List<ImagenesHasPublicaciones> Publicaciones(){
		return imagenesHasPublicacionesService.findAllImagenesHasPublicaciones();		
	}

	@GetMapping("/imagenesHasPublicaciones/{id}")
	public ImagenesHasPublicaciones PublicacionesById(@PathVariable Long id){
			return imagenesHasPublicacionesService.findImagenesHasPublicacionesById(id);	
	}
	
	@PostMapping("/imagenesHasPublicaciones")
	public ImagenesHasPublicaciones newPublicaciones(@RequestBody ImagenesHasPublicaciones imagenesHasPublicaciones){
		return imagenesHasPublicacionesService.saveImagenesHasPublicaciones(imagenesHasPublicaciones);
	}
	
	@PutMapping("/imagenesHasPublicaciones")
	public ImagenesHasPublicaciones replacePublicaciones(@RequestBody ImagenesHasPublicaciones imagenesHasPublicaciones) {
		//Filtros para asegurar que esté un ID y exista
		return imagenesHasPublicacionesService.saveImagenesHasPublicaciones(imagenesHasPublicaciones);
	}
	@DeleteMapping("/imagenesHasPublicaciones/{id}")
	public ImagenesHasPublicaciones borrarPublicaciones(@PathVariable Long id){
		return imagenesHasPublicacionesService.deleteImagenesHasPublicacionesById(id);		
	}
	
	

}
