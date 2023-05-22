package com.example.attempt.services;

import com.example.attempt.models.Comment;
import com.example.attempt.models.Product;
import com.example.attempt.models.User;
import com.example.attempt.repositories.CommentRepository;
import com.example.attempt.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.Principal;

@Service
@Slf4j
@RequiredArgsConstructor
public class CommentService {
    @Autowired
    private final CommentRepository commentRepository;
    private final UserRepository userRepository;
    private final ProductService productService;

    public void saveComment(Principal principal, Comment comment, ProductService product, Long id){
        comment.setUser(getUserByPrincipal(principal));
        comment.setProduct(product.getProductById(id));
        commentRepository.save(comment);
    }
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

}
