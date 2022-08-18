package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Resena;
import com.dviaje.app.repository.IResenaRepository;

@Service
public class ResenaServiceImp implements IResenaService {
	
	@Autowired
	IResenaRepository resenaRepository;

	@Override
	public List<Resena> findAllResena() {
		return  (List<Resena>) resenaRepository.findAll();
	}

	@Override
	public Resena findResenaById(Long id) {
		return  resenaRepository.findById(id).orElse(null);
	}


	@Override
	public Resena deleteResenaById(Long id) {
		Resena Resena= findResenaById(id);
		resenaRepository.deleteById(id);
		return Resena;
	}


	@Override
	public Resena saveResena(Resena Resena) {
		return resenaRepository.save(Resena);
	}
	

}
