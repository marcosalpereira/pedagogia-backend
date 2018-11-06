package br.org.na.pedagogia.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;
import javax.persistence.Version;

import org.modelmapper.ModelMapper;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@MappedSuperclass
@Getter
@Setter
@NoArgsConstructor
public abstract class BaseModel implements Serializable {
	@Transient @JsonIgnore
	private ModelMapper mapper = new ModelMapper();

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(insertable=false, updatable=false)
	private Long id;
	
	@Version
	@Column(columnDefinition = "INTEGER DEFAULT 0")
	private int version;

	public BaseModel(Long id) {
		this.id = id;
	}
	
	public <T> T toDTO(Class<T> dest) {
		return mapper.map(this, dest);
	}


}