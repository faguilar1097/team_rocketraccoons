package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.dviaje.app.entity.WhishlistHasPublicacion;
import com.dviaje.app.repository.IWhishlistHasPublicacionRepository;

@Service
public class WhishlistHasPublicacionServiceImp implements IWhishlistHasPublicacionService{

	@Autowired
	IWhishlistHasPublicacionRepository iWhishlistHasPublicacionRepository;
	
	@Override
	public List<WhishlistHasPublicacion> findAllWhishlistHasPublicacion() {
		return  (List<WhishlistHasPublicacion>) iWhishlistHasPublicacionRepository.findAll();
	}

	@Override
	public WhishlistHasPublicacion findWhishlistHasPublicacionById(Long id) {
		return  iWhishlistHasPublicacionRepository.findById(id).orElse(null);
	}

	@Override
	public WhishlistHasPublicacion deleteWhishlistHasPublicacionById(Long id) {
		WhishlistHasPublicacion whishlistHasPublicacion= findWhishlistHasPublicacionById(id);
		iWhishlistHasPublicacionRepository.deleteById(id);
		return whishlistHasPublicacion;
	}

	@Override
	public WhishlistHasPublicacion saveWhishlistHasPublicacion(WhishlistHasPublicacion whishlistHasPublicacion) {
		return iWhishlistHasPublicacionRepository.save(whishlistHasPublicacion);
	}
	

}
