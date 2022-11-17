package com.barcelos.projetointegrador.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;

@ControllerAdvice
public class ControllerExceptionHandler {

    @ExceptionHandler(EntityNotFoundException.class)
    public ResponseEntity<StandardException> entityNotFound(EntityNotFoundException e, HttpServletRequest request){
        //ZoneId zone = ZoneId.systemDefault();
        //ZonedDateTime zDateTime = ZonedDateTime.now(zone);

        String currentTimeStamp = DateTimeFormatter.ofPattern("dd/MM/yyyy - HH:mm:ss").format(LocalDateTime.now());

        StandardException err = new StandardException();
        err.setTimestamp(String.valueOf(currentTimeStamp));
        err.setStatus(String.valueOf(HttpStatus.NOT_FOUND.value()));
        err.setError(e.getMessage());
        err.setTrace("Nome_Arquivo: " + Arrays.stream(
                e.getStackTrace()).findFirst().get().getFileName() +
                " | Linha: " + Arrays.stream(e.getStackTrace()).findFirst().get().getLineNumber() +
                " | Nome_Método: " + Arrays.stream(e.getStackTrace()).findFirst().get().getMethodName());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(err);
    }
}
