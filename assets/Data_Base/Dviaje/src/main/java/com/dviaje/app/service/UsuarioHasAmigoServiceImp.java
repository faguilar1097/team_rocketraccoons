package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.UsuarioHasAmigo;
import com.dviaje.app.repository.IUsuarioHasAmigoRepository;

@Service
public class UsuarioHasAmigoServiceImp implements IUsuarioHasAmigoService {
	
	@Autowired
	IUsuarioHasAmigoRepository usuarioHasAmigoRepository;

	@Override
	public List<UsuarioHasAmigo> findAllUsuarioHasAmigo() {
		return  (List<UsuarioHasAmigo>) usuarioHasAmigoRepository.findAll();
	}

	@Override
	public UsuarioHasAmigo findUsuarioHasAmigoById(Long id) {
		return  usuarioHasAmigoRepository.findById(id).orElse(null);
	}

	@Override
	public UsuarioHasAmigo deleteUsuarioHasAmigoById(Long id) {
		UsuarioHasAmigo usuarioHasAmigo= findUsuarioHasAmigoById(id);
		usuarioHasAmigoRepository.deleteById(id);
		return usuarioHasAmigo;
	}

	@Override
	public UsuarioHasAmigo saveUsuarioHasAmigo(UsuarioHasAmigo usuarioHasAmigo) {
		return usuarioHasAmigoRepository.save(usuarioHasAmigo);
	}

}
