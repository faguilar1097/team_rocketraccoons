package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

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
	private String estadorep;
	private String imagen_perfil;
	private String lugares_visitados;
	private String intereses;
	private Long wishlist;
	
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "resena_id_resena",referencedColumnName="id_resena")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Resena resena;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "estado_id_estado")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Estado estado;

}