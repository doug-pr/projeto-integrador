package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Taxa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TaxaRepository extends JpaRepository<Taxa, Long> {
    List<Taxa> findTaxaByNome(String nome);
}
