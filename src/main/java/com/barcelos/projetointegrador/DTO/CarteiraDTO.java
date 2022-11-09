package com.barcelos.projetointegrador.DTO;

import lombok.Data;

import java.time.LocalDate;

@Data
public class CarteiraDTO {

    private Long id_carteira;

    private String nome;

    private Double saldoAtual;

    private LocalDate dataInicioInvestimento;

    private LocalDate dataTerminoInvestimento;
}
