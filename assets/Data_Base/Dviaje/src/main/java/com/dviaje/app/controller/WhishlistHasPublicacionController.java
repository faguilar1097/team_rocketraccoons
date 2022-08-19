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

import com.dviaje.app.entity.WhishlistHasPublicacion;
import com.dviaje.app.service.IWhishlistHasPublicacionService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class WhishlistHasPublicacionController {

	@Autowired
	IWhishlistHasPublicacionService whishlistHasPublicacionService;
	
	@GetMapping("/WhishlistHasPublicacion")
	public List<WhishlistHasPublicacion> WhishlistHasPublicaciones(){
		return whishlistHasPublicacionService.findAllWhishlistHasPublicacion();		
	}

	@GetMapping("/WhishlistHasPublicacion/{id}")
	public WhishlistHasPublicacion  WhishlistHasPublicacionById(@PathVariable Long id){
			return whishlistHasPublicacionService.findWhishlistHasPublicacionById(id);	
	}
	
	@PostMapping("/WhishlistHasPublicacion")
	public WhishlistHasPublicacion newWhishlistHasPublicacion(@RequestBody WhishlistHasPublicacion whishlistHasPublicacion){
		return whishlistHasPublicacionService.saveWhishlistHasPublicacion(whishlistHasPublicacion);
	}
	
	@PutMapping("/WhishlistHasPublicacion")
	public WhishlistHasPublicacion replaceWhishlistHasPublicacion(@RequestBody WhishlistHasPublicacion whishlistHasPublicacion) {
		//Filtros para asegurar que esté un ID y exista
		return whishlistHasPublicacionService.saveWhishlistHasPublicacion(whishlistHasPublicacion);
	}
	@DeleteMapping("/WhishlistHasPublicacion/{id}")
	public WhishlistHasPublicacion borrarWhishlistHasPublicacion(@PathVariable Long id){
		return whishlistHasPublicacionService.deleteWhishlistHasPublicacionById(id);		
	}
	
	

}
