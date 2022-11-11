package com.barcelos.projetointegrador.services;

import com.barcelos.projetointegrador.models.Pessoa;
import com.barcelos.projetointegrador.repositories.PessoaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PessoaServiceImpl implements PessoaService {
    final PessoaRepository pessoaRepository;
    public PessoaServiceImpl(PessoaRepository pessoaRepository){
        this.pessoaRepository = pessoaRepository;
    }
    @Override
    public List<Pessoa> listar(){
        return pessoaRepository.findAll();
    }
    @Override
    public Pessoa editar(Pessoa pessoa){
        return pessoaRepository.save(pessoa);
    }
    @Override
    public Pessoa salvar(Pessoa pessoa) throws Exception {

        List<Pessoa> listaDeCpf = pessoaRepository.findAll();
        for(Pessoa pessoa1: listaDeCpf){
            if(pessoa.getDocumento().getCpf().equals(pessoa1.getDocumento().getCpf())){
                throw new Exception("CPF Já existe, insira novamente!");
            }
        }

        List<Pessoa> listaDeRg = pessoaRepository.findAll();
        for(Pessoa pessoa2: listaDeRg){
            if(pessoa.getDocumento().getRg().equals(pessoa2.getDocumento().getRg())){
                throw new Exception("RG Já existe, insira novamente!");
            }
        }

        return pessoaRepository.save(pessoa);
    }
    @Override
    public void deletar(Long id_pessoa){
        pessoaRepository.deleteById(id_pessoa);
    }
}
