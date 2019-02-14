package br.org.na.pedagogia;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import br.org.na.pedagogia.exception.AlreadyExistsException;
import br.org.na.pedagogia.exception.NotFoundException;

@ControllerAdvice
class GlobalControllerExceptionHandler {
	@ResponseStatus(HttpStatus.CONFLICT)
	@ExceptionHandler(ObjectOptimisticLockingFailureException.class)
	public void handleConflict() {
		// Nothing to do
	}

	@ResponseStatus(HttpStatus.NOT_FOUND)
	@ExceptionHandler(NotFoundException.class)
	public void notFound() {
		// Nothing to do
	}
	
	public static class Erro {
		private String message;

		public Erro(String message) {
			this.message = message;
		}
		
		public String getMessage() {
			return message;
		}
		
	}	
	
	public static class Erros {
		private final List<Erro> errors = new ArrayList<>();
		public static Erros of(String message) {
			Erros erros = new Erros();
			erros.errors.add(new Erro(message));			
			return erros;
		}
		
		public List<Erro> getErrors() {
			return errors;
		}
	}

	@ExceptionHandler(AlreadyExistsException.class)
	public ResponseEntity<Erros> alreadyExists(AlreadyExistsException e) {
		final Erros erros = Erros.of(e.getMessage());	
		return new ResponseEntity<Erros>(erros, new HttpHeaders(), HttpStatus.BAD_REQUEST);
	}

}