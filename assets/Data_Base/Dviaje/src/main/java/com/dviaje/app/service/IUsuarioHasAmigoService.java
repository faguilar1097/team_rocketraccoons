package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.UsuarioHasAmigo;

public interface IUsuarioHasAmigoService  {

public List<UsuarioHasAmigo> findAllUsuarioHasAmigo();
	
	/**
	 * Encontrar UsuarioHasAmigos por ID
	 * @param id Id del UsuarioHasAmigo
	 * @return El UsuarioHasAmigo solicitado
	 */
	public UsuarioHasAmigo findUsuarioHasAmigoById(Long id);
	/**
	 * Elimina el UsuarioHasAmigo por id
	 * @param id del UsuarioHasAmigo
	 */
	public UsuarioHasAmigo deleteUsuarioHasAmigoById(Long id);
	
	
	/**
	 * Guarda una UsuarioHasAmigo 
	 * @return devuelve el UsuarioHasAmigo 
	 */
	public UsuarioHasAmigo saveUsuarioHasAmigo(UsuarioHasAmigo usuarioHasAmigo);
}
