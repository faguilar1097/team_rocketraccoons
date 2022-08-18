package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="whishlist_has_publicacion")
public class WhishlistHasPublicacion implements Serializable {/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long whishlistIdWhishlist;
	private Long publicacionIdPublicacion;
	

}
