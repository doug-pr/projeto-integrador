package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Documento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DocumentoRepository extends JpaRepository<Documento, Long> {
}
