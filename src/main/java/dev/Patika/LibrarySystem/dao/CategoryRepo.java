package dev.Patika.LibrarySystem.dao;

import dev.Patika.LibrarySystem.Entites.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepo extends JpaRepository<Category, Long> {
}
