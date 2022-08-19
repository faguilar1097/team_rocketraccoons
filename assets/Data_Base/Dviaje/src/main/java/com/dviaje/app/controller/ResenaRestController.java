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


import com.dviaje.app.service.IResenaService;
import com.dviaje.app.entity.Resena;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class ResenaRestController {
	
	@Autowired
	IResenaService ResenaService;
	

	@GetMapping("/resena")
	public List<Resena> Resena(){
		return ResenaService.findAllResena();		
	}
	
	@GetMapping("/resena/{id}")
	public Resena ResenaById(@PathVariable Long id){
		return ResenaService.findResenaById(id);		
	}
	
	@PostMapping("/resena")
	public Resena newResena(@RequestBody Resena Resena){
		return ResenaService.saveResena(Resena);
	}
	
	@PutMapping("/resena")
	public Resena replaceResena(@RequestBody Resena Resena) {
		//Filtros para asegurar que esté un ID y exista
		return ResenaService.saveResena(Resena);
	}
	@DeleteMapping("/resena/{id}")
	public Resena borrarResena(@PathVariable Long id){
		return ResenaService.deleteResenaById(id);		
	}
	
	

}
