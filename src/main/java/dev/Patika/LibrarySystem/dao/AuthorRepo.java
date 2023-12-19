package dev.Patika.LibrarySystem.dao;

import dev.Patika.LibrarySystem.Entites.Author;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthorRepo extends JpaRepository<Author, Long> {



}
