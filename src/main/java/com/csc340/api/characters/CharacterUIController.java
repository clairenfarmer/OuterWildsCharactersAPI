package com.csc340.api.characters;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CharacterUIController {

    private final CharacterService service;

    public CharacterUIController(CharacterService service) {
        this.service = service;
    }

    // Gallery: GET /
    @GetMapping("/")
    public String gallery(Model model) {
        model.addAttribute("characters", service.findAll());
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
