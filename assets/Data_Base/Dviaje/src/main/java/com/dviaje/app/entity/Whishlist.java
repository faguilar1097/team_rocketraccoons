package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Entity
@Data
@Table(name="Whishlist")
public class Whishlist implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_Whishlist")
	private Long idWhishlist;
	
	

	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "usuario_id_usuario")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Usuario usuario;

}
