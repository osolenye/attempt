package com.example.attempt.repositories;

import com.example.attempt.models.Image;
import org.springframework.boot.autoconfigure.jackson.JacksonProperties;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


public interface ImageRepository extends JpaRepository<Image, Long> {
}
