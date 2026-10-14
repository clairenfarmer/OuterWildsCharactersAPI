package com.csc340.api.characters;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CharacterService {
    
    private final CharacterRepository repository;
    
    public CharacterService(CharacterRepository repository) {
        this.repository = repository;
    }

    public List<OuterWildsCharacter> findAll() {
        return repository.findAll();
    }

    public List<OuterWildsCharacter> findBySpecies(Species species) {
        return repository.findBySpecies(species);
    }

    public List<OuterWildsCharacter> findByPlanet(Planet planet) {
        return repository.findByPlanet(planet);
    }

    public List<OuterWildsCharacter> search(String name, Species species, Planet planet) {
       boolean hasName = name != null && !name.isBlank();
         boolean hasSpecies = species != null;
          boolean hasPlanet = planet != null;
    
          if (hasName && hasSpecies && hasPlanet) {
                return repository.findByNameContainingIgnoreCaseAndSpeciesAndPlanet(name, species, planet);
          } else if (hasName && hasSpecies) {
                return repository.findByNameContainingIgnoreCaseAndSpecies(name, species);
          } else if (hasName && hasPlanet) {
                return repository.findByNameContainingIgnoreCaseAndPlanet(name, planet);
          } else if (hasSpecies && hasPlanet) {
                return repository.findBySpeciesAndPlanet(species, planet);
          } else if (hasName) {
                return repository.findByNameContainingIgnoreCase(name);
          } else if (hasSpecies) {
                return repository.findBySpecies(species);
          } else if (hasPlanet) {
                return repository.findByPlanet(planet);
          } else {
                return repository.findAll();
          }
    }
   
    public OuterWildsCharacter findById(Long id) {
        return repository.findById(id).orElseThrow(() -> new CharacterNotFoundException(id));
    }

    public OuterWildsCharacter create(OuterWildsCharacter character) {
        return repository.save(character);
    }

    public OuterWildsCharacter update(Long id, OuterWildsCharacter updated) {
        OuterWildsCharacter existing = repository.findById(id).orElseThrow(() -> new CharacterNotFoundException(id));

        existing.setName(updated.getName());
        existing.setDescription(updated.getDescription());
        existing.setSpecies(updated.getSpecies());
        existing.setPlanet(updated.getPlanet());

        return repository.save(existing);
    }

    public void delete(Long id) {
        findById(id); // throws 404 if missing
        repository.deleteById(id);
    }
}
