package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Entity
@Data
@Table(name="inicio_sesion")
public class InicioSesion implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idinicio_sesion")
	private Long idinicioSesion;
	
	
	private String correo;
	private String contrasena;
	private Long telefono;

	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "usuario_id_usuario")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Usuario usuario;
}
