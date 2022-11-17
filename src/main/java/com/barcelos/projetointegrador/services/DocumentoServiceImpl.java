package com.barcelos.projetointegrador.services;

import com.barcelos.projetointegrador.exceptions.EntityNotFoundException;
import com.barcelos.projetointegrador.models.Carteira;
import com.barcelos.projetointegrador.models.Documento;
import com.barcelos.projetointegrador.repositories.DocumentoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DocumentoServiceImpl implements DocumentoService{
    final DocumentoRepository documentoRepository;
    public DocumentoServiceImpl(DocumentoRepository documentoRepository){
        this.documentoRepository = documentoRepository;
    }
    @Override
    public List<Documento> listar(){
        return documentoRepository.findAll();
    }
    @Override
    public Documento editar(Documento documento){
        return documentoRepository.save(documento);
    }
    @Override
    public Documento salvar(Documento documento) throws Exception {
        List<Documento> listaDeCpf = documentoRepository.findAll();
        for(Documento documento2: listaDeCpf){
            if(documento.getCpf().equals(documento2.getCpf())){
                throw new EntityNotFoundException("CPF Já existe, insira novamente!");
            }
        }

        List<Documento> listaDeRg = documentoRepository.findAll();
        for(Documento documento3: listaDeRg){
            if(documento.getRg().equals(documento3.getRg())){
                throw new EntityNotFoundException("RG Já existe, insira novamente!");
            }
        }

        return documentoRepository.save(documento);
    }
    @Override
    public void deletar(Long id_documento){
        documentoRepository.deleteById(id_documento);
    }
}
