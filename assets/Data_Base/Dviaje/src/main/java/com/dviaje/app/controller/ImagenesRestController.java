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

import com.dviaje.app.entity.Imagenes;
import com.dviaje.app.service.IImagenesService;

@RestController
public class ImagenesRestController {
	
	@Autowired
	IImagenesService imagenesService;
	
	@GetMapping("/imagenes")
	public List<Imagenes> Imagenes(){
		return imagenesService.findAllImagenes();		
	}

	@GetMapping("/imagenes/{id}")
	public Imagenes ImagenesById(@PathVariable Long id){
			return imagenesService.findImagenesById(id);	
	}
	
	@PostMapping("/imagenes")
	public Imagenes newImagenes(@RequestBody Imagenes imagenes){
		return imagenesService.saveImagenes(imagenes);
	}
	
	@PutMapping("/imagenes")
	public Imagenes replaceImagenes(@RequestBody Imagenes imagenes) {
		//Filtros para asegurar que esté un ID y exista
		return imagenesService.saveImagenes(imagenes);
	}
	@DeleteMapping("/imagenes/{id}")
	public Imagenes borrarImagenes(@PathVariable Long id){
		return imagenesService.deleteImagenesById(id);		
	}
	
	

}
