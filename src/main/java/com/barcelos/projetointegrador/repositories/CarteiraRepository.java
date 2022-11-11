package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Carteira;
import com.barcelos.projetointegrador.models.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CarteiraRepository extends JpaRepository<Carteira, Long> {
    List<Carteira> findCarteiraByNome(String nome);
}
