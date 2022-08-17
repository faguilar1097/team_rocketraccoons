package com.dviaje.app.entity;

import java.io.Serializable;

import javax.persistence.*;

import lombok.Data;


@Entity
@Data
@Table(name="estado")
public class Estado implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_estado")
	private Long idestado;
	
	private String estado;
	
	
	

}
