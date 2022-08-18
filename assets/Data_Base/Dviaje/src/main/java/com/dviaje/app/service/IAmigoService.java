package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.Amigo;

public interface IAmigoService {
	
	/**
	 * Enlistar todos los Amigos
	 * @return lista de Amigos.
	 */
	public List<Amigo> findAllAmigo();
	
	/**
	 * Encontrar Amigos por ID
	 * @param id Id del Amigo
	 * @return El Amigo solicitado
	 */
	public Amigo findAmigoById(Long id);
	/**
	 * Elimina el Amigo por id
	 * @param id del Amigo
	 */
	public Amigo deleteAmigoById(Long id);
	
	
	/**
	 * Guarda un Amigo
	 * @return devuelve el Amigo 
	 */
	public Amigo saveAmigo(Amigo Amigo);
	

}
