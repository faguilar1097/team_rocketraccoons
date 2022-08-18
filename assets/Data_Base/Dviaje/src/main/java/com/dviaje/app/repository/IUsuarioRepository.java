package com.dviaje.app.repository;

import org.springframework.data.repository.CrudRepository;

import com.dviaje.app.entity.Usuario;

public interface IUsuarioRepository extends CrudRepository <Usuario, Long>{

}
