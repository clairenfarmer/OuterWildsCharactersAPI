package com.csc340.api.characters;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;

@RestController 
@RequestMapping("/api/characters")
public class CharacterController {
    
    private final CharacterService service;
    
    public CharacterController(CharacterService service) {
        this.service = service;
    }

    @GetMapping
    public List<OuterWildsCharacter> list(@RequestParam(required = false) String name,
            @RequestParam(required = false) Species species,
            @RequestParam(required = false) Planet planet) {
        return service.search(name, species, planet);
    }

    @GetMapping("/{id}")
    public OuterWildsCharacter get(@PathVariable Long id) {
        return service.findById(id);
    }

    @PostMapping 
    @ResponseStatus(HttpStatus.CREATED)
    public OuterWildsCharacter create(@Valid @RequestBody OuterWildsCharacter character) {
        return service.create(character);
    }

    @PutMapping("/{id}")
    public OuterWildsCharacter update(@PathVariable Long id, @Valid @RequestBody OuterWildsCharacter character) {
        return service.update(id, character);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }
}
