package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.ImagenesHasPublicaciones;

public interface IImagenesHasPublicacionesService{
	
	/**
	 * Enlistar todos los ImagenesHasPublicacioness
	 * @return lista de ImagenesHasPublicacioness.
	 */
	public List<ImagenesHasPublicaciones> findAllImagenesHasPublicaciones();
	
	/**
	 * Encontrar ImagenesHasPublicacioness por ID
	 * @param id Id del ImagenesHasPublicaciones
	 * @return El ImagenesHasPublicaciones solicitado
	 */
	public ImagenesHasPublicaciones findImagenesHasPublicacionesById(Long id);
	/**
	 * Elimina el ImagenesHasPublicaciones por id
	 * @param id del ImagenesHasPublicaciones
	 */
	public ImagenesHasPublicaciones deleteImagenesHasPublicacionesById(Long id);
	
	
	/**
	 * Guarda un ImagenesHasPublicaciones
	 * @return devuelve el ImagenesHasPublicaciones 
	 */
	public ImagenesHasPublicaciones saveImagenesHasPublicaciones(ImagenesHasPublicaciones imagenesHasPublicaciones);
	

}
