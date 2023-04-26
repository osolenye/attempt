package com.example.attempt.repositories;

import com.example.attempt.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ImageRepository extends JpaRepository<Image, Long> {
}
