package com.barcelos.projetointegrador.DTO;

import lombok.Data;

@Data
public class EnderecoDTO {

    private Long id_endereco;

    private String logradouro;

    private String numeroCasa;

    private String cep;

    private String referencia;
}
