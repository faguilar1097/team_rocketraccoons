package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.Publicaciones;

public interface IPublicacionesService {
	
	/**
	 * Enlistar todos los Publicaciones
	 * @return lista de Publicaciones.
	 */
	public List<Publicaciones> findAllPublicaciones();
	
	/**
	 * Encontrar Publicaciones por ID
	 * @param id Id de Publicacion
	 * @return la Publicacion solicitada
	 */
	public Publicaciones findPublicacionesById(Long id);
	/**
	 * Elimina el Publicaciones por id
	 * @param id del Publicaciones
	 */
	public Publicaciones deletePublicacionesById(Long id);
	
	
	/**
	 * Guarda una Publicacion
	 * @return devuelve la Publicacion 
	 */
	public Publicaciones savePublicaciones(Publicaciones publicaciones);

}
