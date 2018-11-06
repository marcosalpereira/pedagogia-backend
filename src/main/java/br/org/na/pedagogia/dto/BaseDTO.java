package br.org.na.pedagogia.dto;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public abstract class BaseDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long id;

	private int version;

}