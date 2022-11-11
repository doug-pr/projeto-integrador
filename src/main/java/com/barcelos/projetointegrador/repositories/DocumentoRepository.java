package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Documento;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DocumentoRepository extends JpaRepository<Documento, Long> {
    List<Documento> findDocumentoByCnpj(String cnpj);
    List<Documento> findDocumentoByCpf(String cpf);
    List<Documento> findDocumentoByRg(String rg);
}
