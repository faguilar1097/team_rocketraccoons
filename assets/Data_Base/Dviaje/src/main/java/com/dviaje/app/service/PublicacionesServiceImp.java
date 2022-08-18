package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Publicaciones;
import com.dviaje.app.repository.IPublicacionesRepository;

@Service
public class PublicacionesServiceImp implements IPublicacionesService {
	
	@Autowired
	IPublicacionesRepository publicacionesRepository;

	@Override
	public List<Publicaciones> findAllPublicaciones() {
		return  (List<Publicaciones>) publicacionesRepository.findAll();
	}

	@Override
	public Publicaciones findPublicacionesById(Long id) {
		return  publicacionesRepository.findById(id).orElse(null);
	}

	@Override
	public Publicaciones deletePublicacionesById(Long id) {
		Publicaciones publicacion= findPublicacionesById(id);
		publicacionesRepository.deleteById(id);
		return publicacion;
	}

	@Override
	public Publicaciones savePublicaciones(Publicaciones publicaciones) {
		return publicacionesRepository.save(publicaciones);
	}
}
