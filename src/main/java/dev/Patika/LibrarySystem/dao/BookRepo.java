package dev.Patika.LibrarySystem.dao;

import dev.Patika.LibrarySystem.Entites.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepo extends JpaRepository<Book, Long> {
}
