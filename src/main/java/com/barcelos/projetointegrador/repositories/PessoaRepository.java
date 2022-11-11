package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Documento;
import com.barcelos.projetointegrador.models.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PessoaRepository extends JpaRepository<Pessoa, Long> {
    List<Pessoa> findPessoaByDocumento_Cpf(String cpf);
    List<Pessoa> findPessoaByDocumento_Rg(String rg);
}
