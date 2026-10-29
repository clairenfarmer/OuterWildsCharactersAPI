package com.csc340.api.characters;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping ("/characters")
public class CharacterUIController {

    private final CharacterService service;
    
    public CharacterUIController(CharacterService service) {
        this.service = service;
    }

    @GetMapping ("/about")
    public String about() {
        return "about";
    }

    @GetMapping ("/{id}")
    public String details(@PathVariable long id, Model model) {
        OuterWildsCharacter character = service.findById(id);
        model.addAttribute("character", character);

        return "details";
    }
}
