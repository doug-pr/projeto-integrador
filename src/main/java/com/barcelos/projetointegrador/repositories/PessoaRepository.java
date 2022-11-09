package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PessoaRepository extends JpaRepository<Pessoa, Long> {
}
