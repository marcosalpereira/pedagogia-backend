package br.org.na.pedagogia;

import org.springframework.http.HttpStatus;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import br.org.na.pedagogia.exception.NotFoundException;

@ControllerAdvice
class GlobalControllerExceptionHandler {
    @ResponseStatus(HttpStatus.CONFLICT)  // 409
    @ExceptionHandler(ObjectOptimisticLockingFailureException.class)
    public void handleConflict() {
        // Nothing to do
    }
    
    @ResponseStatus(HttpStatus.NOT_FOUND)  // 409
    @ExceptionHandler(NotFoundException.class)
    public void notFound() {
    	// Nothing to do
    }
}