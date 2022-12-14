package com.barcelos.projetointegrador.services;

import com.barcelos.projetointegrador.models.Carteira;

import java.util.List;

public interface CarteiraService {
    List<Carteira> listar();
    Carteira editar(Carteira carteira);
    Carteira salvar(Carteira carteira) throws Exception;
    void deletar(Long id_carteira);
}
