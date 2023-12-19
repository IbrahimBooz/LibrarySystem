package dev.Patika.LibrarySystem.business.abstracs;

import dev.Patika.LibrarySystem.Entites.Category;

import java.util.List;

public interface ICategoryService {
    Category save(Category category);

    Category update( Category category);

    Category getById(Long id);
    void delete(Long id);
    List<Category> findAll(Category category);
}
