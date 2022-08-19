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
@Table(name="imagenes")
public class Imagenes implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_imagenes")
	private Long idimagenes;
	private String url;
	private String lugar;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "estado_id_estado")
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	private Estado estado;
	
}
