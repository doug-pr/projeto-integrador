package com.barcelos.projetointegrador.DTO;

import com.barcelos.projetointegrador.models.Carteira;
import com.barcelos.projetointegrador.models.Documento;
import com.barcelos.projetointegrador.models.Endereco;
import com.barcelos.projetointegrador.models.Taxa;
import lombok.Data;

@Data
public class PessoaDTO {

    private Long id_pessoa;

    private String nome;

    private Documento documento;

    private Endereco endereco;

    private String genero;

    private Integer idade;

    private Double rendimentoMensal;

    private String estadoCivil;

    private String dependentes;

    private Carteira carteira;

    private Taxa taxa;
}
