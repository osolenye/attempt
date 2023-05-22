package com.example.attempt.controllers;

import com.example.attempt.models.Comment;
import com.example.attempt.models.Product;
import com.example.attempt.models.User;
import com.example.attempt.repositories.CommentRepository;
import com.example.attempt.repositories.ProductRepository;
import com.example.attempt.repositories.UserRepository;
import com.example.attempt.services.CommentService;
import com.example.attempt.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class CommentController {
    @Autowired
    private final CommentService commentService;
    @Autowired
    private final CommentRepository commentRepository;
    @Autowired
    private final UserRepository userRepository;
    @Autowired
    private final ProductService productService;


    @PostMapping("/comment/create/{id}")
    public String commentCreate(Principal principal, Comment comment, /*ProductService product,*/ @PathVariable  Long id) throws IOException {
        comment.setUser(getUserByPrincipal(principal));
        comment.setProduct(productService.getProductById(id));
        commentRepository.save(comment);
        return "redirect:/product/{id}";
    }
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
}
