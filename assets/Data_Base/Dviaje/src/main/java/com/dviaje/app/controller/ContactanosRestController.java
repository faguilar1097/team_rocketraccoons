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

import com.dviaje.app.entity.Contactanos;
import com.dviaje.app.service.IContactanosService;

@RestController
public class ContactanosRestController {

	@Autowired
	IContactanosService contactanosService;
	
	@GetMapping("/contactanos")
	public List<Contactanos> Contactanos(){
		return contactanosService.findAllContactanos();		
	}

	@GetMapping("/contactanos/{id}")
	public Contactanos ContactanosById(@PathVariable Long id){
			return contactanosService.findContactanosById(id);	
	}
	
	@PostMapping("/contactanos")
	public Contactanos newContactanos(@RequestBody Contactanos Contactanos){
		return contactanosService.saveContactanos(Contactanos);
	}
	
	@PutMapping("/contactanos")
	public Contactanos replaceContactanos(@RequestBody Contactanos Contactanos) {
		//Filtros para asegurar que esté un ID y exista
		return contactanosService.saveContactanos(Contactanos);
	}
	@DeleteMapping("/contactanos/{id}")
	public Contactanos borrarContactanos(@PathVariable Long id){
		return contactanosService.deleteContactanosById(id);		
	}
	
	
	
}
