package dev.Patika.LibrarySystem.business.abstracs;

import dev.Patika.LibrarySystem.Entites.BookBorrower;

import java.util.List;

public interface IBookBorrowerService {
    BookBorrower save(BookBorrower bookBorrower);

    BookBorrower update(BookBorrower bookBorrower);

    BookBorrower getById(Long id);
    void delete(Long id);
    List<BookBorrower> findAll(BookBorrower bookBorrower);
}
