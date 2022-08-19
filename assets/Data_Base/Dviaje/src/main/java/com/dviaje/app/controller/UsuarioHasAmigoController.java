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

import com.dviaje.app.entity.UsuarioHasAmigo;
import com.dviaje.app.service.IUsuarioHasAmigoService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path="/api") //localhost:port/api
public class UsuarioHasAmigoController {

	@Autowired
	IUsuarioHasAmigoService usuarioHasAmigoService;
	
	@GetMapping("/usuarioHasAmigo")
	public List<UsuarioHasAmigo> usuarioHasAmigos(){
		return usuarioHasAmigoService.findAllUsuarioHasAmigo();		
	}

	@GetMapping("/usuarioHasAmigo/{id}")
	public UsuarioHasAmigo usuarioHasAmigoById(@PathVariable Long id){
			return usuarioHasAmigoService.findUsuarioHasAmigoById(id);	
	}
	
	@PostMapping("/usuarioHasAmigo")
	public UsuarioHasAmigo newusuarioHasAmigo(@RequestBody UsuarioHasAmigo usuarioHasAmigo){
		return usuarioHasAmigoService.saveUsuarioHasAmigo(usuarioHasAmigo);
	}
	
	@PutMapping("/usuarioHasAmigo")
	public UsuarioHasAmigo replaceusuarioHasAmigo(@RequestBody UsuarioHasAmigo usuarioHasAmigo) {
		//Filtros para asegurar que esté un ID y exista
		return usuarioHasAmigoService.saveUsuarioHasAmigo(usuarioHasAmigo);
	}
	@DeleteMapping("/usuarioHasAmigo/{id}")
	public UsuarioHasAmigo borrarusuarioHasAmigo(@PathVariable Long id){
		return usuarioHasAmigoService.deleteUsuarioHasAmigoById(id);		
	}
	
}
