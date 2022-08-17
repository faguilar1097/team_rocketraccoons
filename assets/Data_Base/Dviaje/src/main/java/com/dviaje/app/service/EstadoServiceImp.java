package com.dviaje.app.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Estado;
import com.dviaje.app.repository.IEstadoRepository;

@Service
public class EstadoServiceImp  implements IEstadoService  {
	
	@Autowired
	IEstadoRepository estadoRepository;
	
	
	@Override
	public List<Estado>findAllEstado(){	
		return (List<Estado>) estadoRepository.findAll();	
	}


	@Override
	public Estado findEstadoById(Long id) {
		return  estadoRepository.findById(id).orElse(null);
	}


	@Override
	public Estado deleteEstadoById(Long id) {
		Estado estado= findEstadoById(id);
		estadoRepository.deleteById(id);
		return estado;
	}


	@Override
	public Estado saveEstado(Estado estado) {
		return estadoRepository.save(estado);
	}
	
	

	
}
