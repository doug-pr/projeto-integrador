package com.barcelos.projetointegrador.repositories;

import com.barcelos.projetointegrador.models.Pessoa;
import com.barcelos.projetointegrador.models.Taxa;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PessoaRepository extends JpaRepository<Pessoa, Long> {
    List<Pessoa> findPessoaByDocumento_Cpf(String cpf);
    List<Pessoa> findPessoaByDocumento_Rg(String rg);
    List<Pessoa> findByTaxaPorcentagemAndCarteira_SaldoAtual(Double porcentagem, Double saldoAtual);
}
