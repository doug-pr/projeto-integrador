package com.barcelos.projetointegrador.services;

import com.barcelos.projetointegrador.exceptions.EntityNotFoundException;
import com.barcelos.projetointegrador.models.Carteira;
import com.barcelos.projetointegrador.models.Endereco;
import com.barcelos.projetointegrador.repositories.EnderecoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnderecoServiceImpl implements EnderecoService {
    final EnderecoRepository enderecoRepository;
    public EnderecoServiceImpl(EnderecoRepository enderecoRepository){
        this.enderecoRepository = enderecoRepository;
    }
    @Override
    public List<Endereco> listar() {
        return enderecoRepository.findAll();
    }
    @Override
    public Endereco editar(Endereco endereco){
        return enderecoRepository.save(endereco);
    }
    @Override
    public Endereco salvar(Endereco endereco) throws Exception {
        List<Endereco> listaDeCep = enderecoRepository.findAll();
        for(Endereco endereco1: listaDeCep){
            if(endereco.getCep().equals(endereco1.getCep())){
                throw new EntityNotFoundException("CEP Já existe, insira novamente!");
            }
        }
        return enderecoRepository.save(endereco);
    }
    @Override
    public void deletar(Long id_endereco){
        enderecoRepository.deleteById(id_endereco);
    }
}
