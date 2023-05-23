package com.example.attempt.controllers;

import com.example.attempt.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class AboutController {
    private final ProductService productService;

    @GetMapping("/about")
    public String about(Principal principal, Model model){
        model.addAttribute("user", productService.getUserByPrincipal(principal));
        return "about";
    }
}
