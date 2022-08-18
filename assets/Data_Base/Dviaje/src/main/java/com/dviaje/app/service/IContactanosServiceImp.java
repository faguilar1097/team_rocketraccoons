package com.dviaje.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dviaje.app.entity.Contactanos;
import com.dviaje.app.repository.IContactanosRepository;



@Service
public class IContactanosServiceImp implements IContactanosService{
	
	
	@Autowired
	IContactanosRepository contactanosRepository;
	

	@Override
	public List<Contactanos> findAllContactanos() {
		// TODO Auto-generated method stub
		return  (List<Contactanos>) contactanosRepository.findAll();
	}

	@Override
	public Contactanos findContactanosById(Long id) {
		return  contactanosRepository.findById(id).orElse(null);
	}


	@Override
	public Contactanos deleteContactanosById(Long id) {
		Contactanos Contactanos= findContactanosById(id);
		contactanosRepository.deleteById(id);
		return Contactanos;
	}


	@Override
	public Contactanos saveContactanos(Contactanos Contactanos) {
		return contactanosRepository.save(Contactanos);
	}
	


}
