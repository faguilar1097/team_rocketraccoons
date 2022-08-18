package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.InicioSesion;

public interface IInicioSesionService {

	/**
	 * Enlista todos los clientes de las base de datos
	 * @param inicioSesion
	 * @return Listado de inicio de Sesion
	 */
	
	public List<InicioSesion> findAllInicioSesions();
	/**
	 * Nos guarda el inicio en la base de datos
	 * @param inicioSesion Datos del usuario
	 * @return Devuelve el inicio con el Id asignado
	 */
	public InicioSesion saveInicioSesion(InicioSesion inicioSesion); 
	/**
	 * Elimina inicio de la base de datos
	 * @param Id el identificador del cliente a eliminar
	 */
	public InicioSesion deleteInicioSesionById(Long id);
	/**
	 * Encontrar inicio en la base de datos
	 * @param Id Identificador del cliente a buscar
	 * @return
	 */
	public InicioSesion findInicioSesionById(Long id);
	
}
