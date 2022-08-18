package com.dviaje.app.service;

import java.util.List;

import com.dviaje.app.entity.Whishlist;

public interface IWhishlistService {
public List<Whishlist> findAllWhishlist();
	
	/**
	 * Encontrar Whishlists por ID
	 * @param id Id del Whishlist
	 * @return El Whishlist solicitado
	 */
	public Whishlist findWhishlistById(Long id);
	/**
	 * Elimina el Whishlist por id
	 * @param id del Whishlist
	 */
	public Whishlist deleteWhishlistById(Long id);
	
	
	/**
	 * Guarda una Whishlist 
	 * @return devuelve el Whishlist 
	 */
	public Whishlist saveWhishlist(Whishlist whishlist);
	

}
