package br.org.na.pedagogia.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;

import lombok.Getter;
import lombok.Setter;

@MappedSuperclass
@Getter
@Setter
public abstract class BaseModel implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Version
	@Column(columnDefinition = "INTEGER DEFAULT 0")
	private int version;

}