package com.csc340.api.characters;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CharacterUIController {

    private final CharacterService service;

    public CharacterUIController(CharacterService service) {
        this.service = service;
    }

    // Gallery: GET /  (optionally filtered by name and/or species)
    @GetMapping("/")
    public String gallery(
            @RequestParam(required = false) String name,
            @RequestParam(required = false) Species species,
            Model model) {
        model.addAttribute("characters", service.search(name, species, null));
        // Keep the typed/selected values in the form after searching
        model.addAttribute("name", name);
        model.addAttribute("species", species);
        model.addAttribute("allSpecies", Species.values());
        return "index";
    }

    // Details: GET /characters/{id}
    @GetMapping("/characters/{id}")
    public String details(@PathVariable long id, Model model) {
        OuterWildsCharacter character = service.findById(id);
        model.addAttribute("character", character);
        return "details";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }
}
