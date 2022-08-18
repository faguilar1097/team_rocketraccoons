package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.*;

import lombok.Data;

@Entity
@Data
@Table(name="usuario")
public class Usuario implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_usuario")
	private Long idusuario;
	
	private String nombre;
	private String apellido;
	private String estado;
	private String imagen_perfil;
	private String lugares_visitados;
	private Long amigos;
	private Long wishlist;
	private Long publicaciones;

}