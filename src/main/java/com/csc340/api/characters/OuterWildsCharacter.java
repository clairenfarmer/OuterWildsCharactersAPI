package com.csc340.api.characters;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "characters")
public class OuterWildsCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long CharacterId;

    @NotNull
    @NotBlank
    private String name;

    @NotNull
    @NotBlank
    private String description;

    @NotNull
    @Enumerated(EnumType.STRING)
    private Species species;

    @NotNull
    @Enumerated(EnumType.STRING)
    private Planet planet;
}