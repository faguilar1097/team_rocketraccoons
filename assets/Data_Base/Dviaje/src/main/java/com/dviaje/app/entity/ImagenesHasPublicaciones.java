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
@Table(name="imagenes_has_publicaciones")
public class ImagenesHasPublicaciones implements Serializable {/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_imagenes_publicacion")
	private Long idImagenesPublicaciones;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "imagenes_id_imagenes",referencedColumnName="id_imagenes")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Imagenes imagenes;

	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "publicaciones_id_publicaciones",referencedColumnName="id_publicacion") //Especificar columnas que conecto
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Publicaciones publicaciones;
	
	//@ManyToMany
    // join columns hace referencia a la columna que hace referencia hacia esta
    // Es decir la tabla usuario_rol va a tener un campo que se llama id_usuario
    // inverseJoinColumns = el inverso, hace referencia a rol
    //@JoinTable(name = "usuario_rol", joinColumns = @JoinColumn(name = "id_usuario"),
    //inverseJoinColumns = @JoinColumn(name = "rol_id")

	
	
	

}
