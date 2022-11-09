package com.barcelos.projetointegrador.services;

import com.barcelos.projetointegrador.models.Endereco;

import java.util.List;

public interface EnderecoService {
    List<Endereco> listar();
    Endereco editar(Endereco endereco);
    Endereco salvar(Endereco endereco);
    void deletar(Long id_endereco);
}
