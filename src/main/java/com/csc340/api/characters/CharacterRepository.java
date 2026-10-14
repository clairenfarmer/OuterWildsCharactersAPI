package com.csc340.api.characters;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CharacterRepository extends JpaRepository<OuterWildsCharacter, Long> {

    List<OuterWildsCharacter> findByNameContainingIgnoreCase(String name);
    
    List<OuterWildsCharacter> findBySpecies(Species species);
    
    List<OuterWildsCharacter> findByPlanet(Planet planet);
    
    List<OuterWildsCharacter> findByNameContainingIgnoreCaseAndSpecies(String name, Species species);
    
    List<OuterWildsCharacter> findByNameContainingIgnoreCaseAndPlanet(String name, Planet planet);
    
    List<OuterWildsCharacter> findBySpeciesAndPlanet(Species species, Planet planet);
    
    List<OuterWildsCharacter> findByNameContainingIgnoreCaseAndSpeciesAndPlanet(String name, Species species, Planet planet);
    
}
