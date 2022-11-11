package com.barcelos.projetointegrador.services;

import com.barcelos.projetointegrador.models.Taxa;

import java.util.List;

public interface TaxaService {
    List<Taxa> listar();
    Taxa editar(Taxa taxa);
    Taxa salvar(Taxa taxa) throws Exception;
    void deletar(Long id_taxa);
}
