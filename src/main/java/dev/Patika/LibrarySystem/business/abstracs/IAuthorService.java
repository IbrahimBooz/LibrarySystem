package dev.Patika.LibrarySystem.business.abstracs;

import dev.Patika.LibrarySystem.Entites.Author;

import java.util.List;

public interface IAuthorService {

    Author save(Author author);

    Author update(Author author);

    Author getById(Long id);
    void delete(Long id);
    List<Author> findAll( );
}
