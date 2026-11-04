package com.csc340.api.characters;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CharacterUIController {

    private final CharacterService service;

    public CharacterUIController(CharacterService service) {
        this.service = service;
    }

    // Treat empty form fields as null so blank values don't fail enum binding
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
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

    // Details: GET /characters/{id}  (id must be numeric so /characters/new won't match here)
    @GetMapping("/characters/{id:\\d+}")
    public String details(@PathVariable long id, Model model) {
        OuterWildsCharacter character = service.findById(id);
        model.addAttribute("character", character);
        return "details";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    // Show the add-character form: GET /characters/new
    @GetMapping("/characters/new")
    public String newCharacterForm(Model model) {
        model.addAttribute("allSpecies", Species.values());
        model.addAttribute("allPlanets", Planet.values());
        model.addAttribute("formAction", "/characters");
        return "new-character-form";
    }

    // Receive the submitted form: POST /characters
    @PostMapping("/characters")
    public String createCharacter(@ModelAttribute OuterWildsCharacter character) {
        service.create(character);
        return "redirect:/";
    }

    // Show the edit form pre-filled: GET /characters/{id}/edit
    @GetMapping("/characters/{id:\\d+}/edit")
    public String editCharacterForm(@PathVariable Long id, Model model) {
        OuterWildsCharacter character = service.findById(id); // 404 if missing
        model.addAttribute("character", character);
        model.addAttribute("allSpecies", Species.values());
        model.addAttribute("allPlanets", Planet.values());
        model.addAttribute("formAction", "/characters/" + id);
        return "new-character-form";
    }

    // Receive the edit submission: POST /characters/{id}
    @PostMapping("/characters/{id:\\d+}")
    public String updateCharacter(@PathVariable Long id,
            @ModelAttribute OuterWildsCharacter character,
            RedirectAttributes redirectAttributes) {
        OuterWildsCharacter updated = service.update(id, character); // 404 if missing
        redirectAttributes.addFlashAttribute("message", updated.getName() + " was updated successfully.");
        return "redirect:/characters/" + id;
    }

    // Delete: POST /characters/{id}/delete
    @PostMapping("/characters/{id:\\d+}/delete")
    public String deleteCharacter(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        OuterWildsCharacter character = service.findById(id); // 404 if missing
        service.delete(id);
        redirectAttributes.addFlashAttribute("message", character.getName() + " was deleted.");
        return "redirect:/";
    }
}
