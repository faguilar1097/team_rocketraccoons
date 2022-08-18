package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.InicioSesion;
import com.dviaje.app.repository.IInicioSesionRepository;

@Service
public class InicioSesionServiceImp implements IInicioSesionService{
	
	@Autowired
	IInicioSesionRepository inicioSesionRepository;

	@Override
	public List<InicioSesion> findAllInicioSesions() {
		
		return (List<InicioSesion>) inicioSesionRepository.findAll();
	}

	@Override
	public InicioSesion saveInicioSesion(InicioSesion inicioSesion) {
		
		return inicioSesionRepository.save(inicioSesion);
	}

	@Override
	public InicioSesion deleteInicioSesionById(Long id) {
		InicioSesion inicioSesion = findInicioSesionById(id);
		inicioSesionRepository.deleteById(id);
		return inicioSesion;
	}

	@Override
	public InicioSesion findInicioSesionById(Long id) {
	
	return inicioSesionRepository.findById(id).orElse(null);
	}


}
