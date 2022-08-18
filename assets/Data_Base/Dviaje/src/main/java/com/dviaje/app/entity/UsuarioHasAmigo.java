package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="usuario_has_amigo")
public class UsuarioHasAmigo implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	private Long usuarioIdUsuario;
	@Id
	private Long amigoIdamigo;

}
