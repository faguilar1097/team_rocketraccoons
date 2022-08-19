package com.dviaje.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dviaje.app.entity.Estado;
import com.dviaje.app.service.IEstadoService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class EstadoRestController {
	
	@Autowired 
	IEstadoService EstadoService;
	
	@GetMapping("/estado")
	public List<Estado> estado(){
		return EstadoService.findAllEstado();		
	}
	
	@GetMapping("/estado/{id}")
	public Estado estadoById(@PathVariable Long id){
		return EstadoService.findEstadoById(id);		
	}
	
	@PostMapping("/estado")
	public Estado newEstado(@RequestBody Estado estado){
		return EstadoService.saveEstado(estado);
	}
	
	@DeleteMapping("/estado/{id}")
	public Estado borrarEstado(@PathVariable Long id){
		return EstadoService.deleteEstadoById(id);		
	}
	

}
