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
import org.springframework.data.domain.ExampleMatcher;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@MappedSuperclass
@Getter
@Setter
@NoArgsConstructor
@ToString
public class BaseModel implements Serializable {
	private static final long serialVersionUID = 1L;
	@Transient @JsonIgnore
	private static ModelMapper mapper = new ModelMapper();

	public static ExampleMatcher MATCHER = ExampleMatcher.matching()     
			  .withIgnorePaths("version");                          

	
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
	
	public <T> T toDTO(Class<T> dto) {
		return (T) mapper.map(this, dto);
	}
	
}