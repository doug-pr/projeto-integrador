package com.barcelos.projetointegrador.services;

import com.barcelos.projetointegrador.models.Carteira;
import com.barcelos.projetointegrador.repositories.CarteiraRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarteiraServiceImpl implements CarteiraService{
    final CarteiraRepository carteiraRepository;

    public CarteiraServiceImpl(CarteiraRepository carteiraRepository) {
        this.carteiraRepository = carteiraRepository;
    }
    @Override
    public List<Carteira> listar(){
        return carteiraRepository.findAll();
    }
    @Override
    public Carteira editar(Carteira carteira){
        return carteiraRepository.save(carteira);
    }
    @Override
    public Carteira salvar(Carteira carteira){
        return carteiraRepository.save(carteira);
    }
    @Override
    public void deletar (Long id_carteira){
        carteiraRepository.deleteById(id_carteira);
    }
}