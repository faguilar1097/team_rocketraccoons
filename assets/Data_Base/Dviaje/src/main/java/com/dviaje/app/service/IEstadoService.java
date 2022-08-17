package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.Estado;



public interface IEstadoService {

	/**
	 * Enlistar todos los estados
	 * @return lista de estados.
	 */
	public List<Estado> findAllEstado();
	
	/**
	 * Encontrar Estados por ID
	 * @param id Id del estado
	 * @return El estado solicitado
	 */
	public Estado findEstadoById(Long id);
	/**
	 * Elimina el estado por id
	 * @param id del estado
	 */
	public Estado deleteEstadoById(Long id);
	
	
	/**
	 * Guarda un estado de la república
	 * @return devuelve el estado 
	 */
	public Estado saveEstado(Estado estado);
	
	
}
