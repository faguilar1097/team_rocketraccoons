package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.WhishlistHasPublicacion;

public interface IWhishlistHasPublicacionService  {
public List<WhishlistHasPublicacion> findAllWhishlistHasPublicacion();
	
	/**
	 * Encontrar WhishlistHasPublicacions por ID
	 * @param id Id del WhishlistHasPublicacion
	 * @return El WhishlistHasPublicacion solicitado
	 */
	public WhishlistHasPublicacion findWhishlistHasPublicacionById(Long id);
	/**
	 * Elimina el WhishlistHasPublicacion por id
	 * @param id del WhishlistHasPublicacion
	 */
	public WhishlistHasPublicacion deleteWhishlistHasPublicacionById(Long id);
	
	
	/**
	 * Guarda una WhishlistHasPublicacion 
	 * @return devuelve el WhishlistHasPublicacion 
	 */
	public WhishlistHasPublicacion saveWhishlistHasPublicacion(WhishlistHasPublicacion whishlistHasPublicacion);
	

}
