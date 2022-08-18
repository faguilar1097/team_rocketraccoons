package com.dviaje.app.repository;

import org.springframework.data.repository.CrudRepository;

import com.dviaje.app.entity.Amigo;


public interface IAmigoRepository extends CrudRepository <Amigo, Long> {
	
}
