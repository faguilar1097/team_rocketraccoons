package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.*;

import lombok.Data;

@Entity
@Data
@Table(name="inicio_sesion")
public class InicioSesion implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idinicio_sesion")
	private Long idestado;
	
	private String correo;
	private String contrasena;

}
