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
@Table(name="usuario_has_amigo")
public class UsuarioHasAmigo implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_usuario_amigo")
	private Long idUsuarioAmigo;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "usuario_id_usuario",referencedColumnName="id_usuario")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Usuario usuario;

	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "amigo_id_amigo",referencedColumnName="id_Amigo")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Amigo amigo;

}
