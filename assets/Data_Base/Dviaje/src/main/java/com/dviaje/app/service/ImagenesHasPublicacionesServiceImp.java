package com.dviaje.app.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.ImagenesHasPublicaciones;
import com.dviaje.app.repository.IImagenesHasPublicacionesRepository;

@Service
public class ImagenesHasPublicacionesServiceImp implements IImagenesHasPublicacionesService{

	@Autowired
	IImagenesHasPublicacionesRepository imagenesHasPublicacionesRepository;
	
	@Override
	public List<ImagenesHasPublicaciones> findAllImagenesHasPublicaciones() {
		return  (List<ImagenesHasPublicaciones>) imagenesHasPublicacionesRepository.findAll();
	}

	@Override
	public ImagenesHasPublicaciones findImagenesHasPublicacionesById(Long id) {
		return  imagenesHasPublicacionesRepository.findById(id).orElse(null);
	}

	@Override
	public ImagenesHasPublicaciones deleteImagenesHasPublicacionesById(Long id) {
		ImagenesHasPublicaciones imagenesHasPublicaciones= findImagenesHasPublicacionesById(id);
		imagenesHasPublicacionesRepository.deleteById(id);
		return imagenesHasPublicaciones;
	}

	@Override
	public ImagenesHasPublicaciones saveImagenesHasPublicaciones(ImagenesHasPublicaciones imagenesHasPublicaciones) {
		return imagenesHasPublicacionesRepository.save(imagenesHasPublicaciones);
	}

}
