package com.barcelos.projetointegrador.models;

import lombok.*;
import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "pessoa")
public class Pessoa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "documento")
    private Documento documento;

    @Column(name = "endereco")
    private Endereco endereco;

    @Column(name = "genero")
    private String genero;

    @Column(name = "idade")
    private Integer idade;

    @Column(name = "rendimentoMensal")
    private Double rendimentoMensal;

    @Column(name = "estadoCivil")
    private String estadoCivil;

    @Column(name = "dependentes")
    private String dependentes;

    @Column(name = "carteira")
    private Carteira carteira;
}
