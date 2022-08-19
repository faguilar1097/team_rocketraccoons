package com.dviaje.app.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

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
	@JsonFormat(pattern = "YYYY-MM-dd")
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
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "usuario_id_usuario")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Usuario usuario;
	
	
	
	
	
	
	

}
