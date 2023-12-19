package dev.Patika.LibrarySystem.business.abstracs;

import dev.Patika.LibrarySystem.Entites.Book;

import java.util.List;

public interface IBookService {
    Book save(Book book);

    Book update(Book book);

    Book getById(Long id);

    void delete(Long id);

    List<Book> findAll(Book book);
}
