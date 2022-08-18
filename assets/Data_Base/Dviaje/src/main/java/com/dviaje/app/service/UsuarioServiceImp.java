package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Usuario;
import com.dviaje.app.repository.IUsuarioRepository;

@Service
public class UsuarioServiceImp implements IUsuarioService{

	@Autowired
	IUsuarioRepository usuarioRepository;

	@Override
	public List<Usuario> findAllUsuarios() {
		
		return (List<Usuario>) usuarioRepository.findAll();
	}

	@Override
	public Usuario saveUsuario(Usuario usuario) {
		
		return usuarioRepository.save(usuario);
	}

	@Override
	public Usuario deleteUsuarioById(Long id) {
		Usuario usuario = findUsuarioById(id);
		usuarioRepository.deleteById(id);
		return usuario;
	}

	@Override
	public Usuario findUsuarioById(Long id) {
	
	return usuarioRepository.findById(id).orElse(null);
	}


}
