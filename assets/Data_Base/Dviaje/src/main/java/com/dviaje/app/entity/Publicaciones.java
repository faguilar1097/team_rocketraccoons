package com.dviaje.app.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="Publicaciones")
public class Publicaciones implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_publicacion")
	private Long idpublicacion;
	private String titulo;
	private Date fecha;
	private String tips;
	private String ruta;
	private String categoria;
	private String clima;
	private String descripcion;
	private String seguridad;
	private String estado;
	private String municipio;
	private String epocaAnual;
	private int reacciones;
	private int usuarioIdUsuario;
	
	
	
	
	
	
	

}
