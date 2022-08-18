package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Amigo;
import com.dviaje.app.repository.IAmigoRepository;

@Service
public class IAmigoServiceImp implements IAmigoService {
		
	@Autowired
	IAmigoRepository AmigoRepository;
	

	@Override
	public List<Amigo> findAllAmigo() {
		// TODO Auto-generated method stub
		return  (List<Amigo>) AmigoRepository.findAll();
	}

	@Override
	public Amigo findAmigoById(Long id) {
		return  AmigoRepository.findById(id).orElse(null);
	}


	@Override
	public Amigo deleteAmigoById(Long id) {
		Amigo amigo= findAmigoById(id);
		AmigoRepository.deleteById(id);
		return amigo;
	}


	@Override
	public Amigo saveAmigo(Amigo amigo) {
		return AmigoRepository.save(amigo);
	}
	

	
	

}
