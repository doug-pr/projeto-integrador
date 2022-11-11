package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Carteira;
import com.barcelos.projetointegrador.models.Endereco;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EnderecoRepository extends JpaRepository<Endereco, Long> {
    List<Endereco> findEnderecoByCep(String cep);
}
