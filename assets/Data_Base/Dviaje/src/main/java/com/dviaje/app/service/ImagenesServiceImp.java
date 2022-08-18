package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Imagenes;
import com.dviaje.app.repository.IImagenesRepository;

@Service
public class ImagenesServiceImp implements IImagenesService {

	@Autowired
	IImagenesRepository imagenesRepository;
	
	@Override
	public List<Imagenes> findAllImagenes() {
		return  (List<Imagenes>) imagenesRepository.findAll();
	}

	@Override
	public Imagenes findImagenesById(Long id) {
		return  imagenesRepository.findById(id).orElse(null);
	}

	@Override
	public Imagenes deleteImagenesById(Long id) {
		Imagenes imagenes= findImagenesById(id);
		imagenesRepository.deleteById(id);
		return imagenes;
	}

	@Override
	public Imagenes saveImagenes(Imagenes imagenes) {
		return imagenesRepository.save(imagenes);
	}

}
