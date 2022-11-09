package com.barcelos.projetointegrador.DTO;

import lombok.Data;

@Data
public class TaxaDTO {

    private Long id_taxa;

    private String nome;

    private Double porcentagem;
}
