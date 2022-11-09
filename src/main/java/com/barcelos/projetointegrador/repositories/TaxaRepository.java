package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Taxa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaxaRepository extends JpaRepository<Taxa, Long> {
}
