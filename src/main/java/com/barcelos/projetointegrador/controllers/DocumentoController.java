package com.barcelos.projetointegrador.controllers;

import com.barcelos.projetointegrador.models.Documento;
import com.barcelos.projetointegrador.services.DocumentoServiceImpl;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api")
@CrossOrigin
public class DocumentoController {
    final DocumentoServiceImpl documentoServiceImpl;

    public DocumentoController(DocumentoServiceImpl documentoService){
        this.documentoServiceImpl = documentoService;
    }
    @PostMapping(value = "/salvarDocumento")
    public ResponseEntity<Object>salvarDocumento(@RequestBody Documento documento) throws Exception {
        Documento response = documentoServiceImpl.salvar(documento);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }
    @GetMapping(value = "/buscarDocumento")
    public ResponseEntity<Object>buscarDocumento(){
        List<Documento> response = documentoServiceImpl.listar();
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }
    @PutMapping(value = "/alterarDocumento")
    public ResponseEntity<Object>alterarDocumento(@RequestBody Documento documento){
        Documento response = documentoServiceImpl.editar(documento);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }
}
