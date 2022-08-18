package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.Contactanos;

public interface IContactanosService {
	/**
	 * Enlistar todos los Contactanoss
	 * @return lista de Contactanoss.
	 */
	public List<Contactanos> findAllContactanos();
	
	/**
	 * Encontrar Contactanoss por ID
	 * @param id Id del Contactanos
	 * @return El Contactanos solicitado
	 */
	public Contactanos findContactanosById(Long id);
	/**
	 * Elimina el Contactanos por id
	 * @param id del Contactanos
	 */
	public Contactanos deleteContactanosById(Long id);
	
	
	/**
	 * Guarda un Contactanos
	 * @return devuelve el Contactanos 
	 */
	public Contactanos saveContactanos(Contactanos Contactanos);
	

}
