package dev.Patika.LibrarySystem.dao;

import dev.Patika.LibrarySystem.Entites.BookBorrower;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookBorrowerRepo extends JpaRepository<BookBorrower, Long> {
}
