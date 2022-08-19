package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Entity
@Data
@Table(name="whishlist_has_publicacion")
public class WhishlistHasPublicacion implements Serializable {/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_Whishlist_Publicacion")
	private Long idWhishlistPublicacion;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "whishlist_id_whishlist",referencedColumnName="id_Whishlist")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Whishlist whishlist;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "publicaciones_id_publicaciones",referencedColumnName="id_publicacion")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Publicaciones publicaciones;
	

}
