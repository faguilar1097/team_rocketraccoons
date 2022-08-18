package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.Resena;

public interface IResenaService {
	
public List<Resena> findAllResena();
	
	/**
	 * Encontrar Resenas por ID
	 * @param id Id del Resena
	 * @return El Resena solicitado
	 */
	public Resena findResenaById(Long id);
	/**
	 * Elimina el Resena por id
	 * @param id del Resena
	 */
	public Resena deleteResenaById(Long id);
	
	
	/**
	 * Guarda una Resena 
	 * @return devuelve el Resena 
	 */
	public Resena saveResena(Resena Resena);
	

}
