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
    private Long characterId;

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

    public Long getCharacterId() { return characterId; }
    public void setCharacterId(Long characterId) { this.characterId = characterId; }
  
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
  
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
  
    public Species getSpecies() { return species; }
    public void setSpecies(Species species) { this.species = species; }
  
    public Planet getPlanet() { return planet; }
    public void setPlanet(Planet planet) { this.planet = planet; }


}