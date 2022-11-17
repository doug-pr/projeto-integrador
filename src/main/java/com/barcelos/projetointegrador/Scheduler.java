package com.barcelos.projetointegrador;

import com.barcelos.projetointegrador.services.PessoaServiceImpl;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
@EnableScheduling
@Service
public class Scheduler {
    final PessoaServiceImpl pessoaService;

    public Scheduler(PessoaServiceImpl pessoaService){
        this.pessoaService = pessoaService;
    }
    @Scheduled(initialDelay = 1000, fixedRate = 1500000)
    public void executaAgendamentos(){
        pessoaService.adicionarTaxa();
        System.out.println("O agendamento foi iniciado!");
    }
}
