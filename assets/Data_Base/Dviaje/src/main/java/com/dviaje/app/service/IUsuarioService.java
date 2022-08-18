package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.Usuario;

public interface IUsuarioService {

	/**
	 * Enlista todos los clientes de las base de datos
	 * @param usuario
	 * @return Listado de inicio de Sesion
	 */
	
	public List<Usuario> findAllUsuarios();
	/**
	 * Nos guarda el inicio en la base de datos
	 * @param usuario Datos del usuario
	 * @return Devuelve el inicio con el Id asignado
	 */
	public Usuario saveUsuario(Usuario usuario); 
	/**
	 * Elimina inicio de la base de datos
	 * @param Id el identificador del cliente a eliminar
	 */
	public Usuario deleteUsuarioById(Long id);
	/**
	 * Encontrar inicio en la base de datos
	 * @param Id Identificador del cliente a buscar
	 * @return
	 */
	public Usuario findUsuarioById(Long id);
}
