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

import com.dviaje.app.entity.InicioSesion;
import com.dviaje.app.service.IInicioSesionService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class InicioSesionRestController {

	@Autowired
	IInicioSesionService inicioSesionService;
	
	@GetMapping("/inicioSesion") //localhost:puerto/api/inicioSesions
	public List<InicioSesion> inicioSesion(){
		return inicioSesionService.findAllInicioSesions();		
	}
	
	@GetMapping("/inicioSesion/{id}")
	public InicioSesion inicioSesionById(@PathVariable Long id) {		
		return inicioSesionService.findInicioSesionById(id);
	}
	
	@PostMapping("/inicioSesion")
	public InicioSesion newInicioSesion(@RequestBody InicioSesion inicioSesion) {
		return inicioSesionService.saveInicioSesion(inicioSesion);
	}
	
	@PutMapping("/inicioSesion")
	public InicioSesion replaceInicioSesion(@RequestBody InicioSesion inicioSesion) {
		//Filtros para asegurar que esté un ID y exista
		return inicioSesionService.saveInicioSesion(inicioSesion);
	}
	
	@DeleteMapping("inicioSesion/{id}")
	public InicioSesion byeInicioSesion(@PathVariable Long id) {
		return inicioSesionService.deleteInicioSesionById(id);
	}

}
