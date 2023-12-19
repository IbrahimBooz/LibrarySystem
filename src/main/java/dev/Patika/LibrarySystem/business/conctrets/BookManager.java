package dev.Patika.LibrarySystem.business.conctrets;

import dev.Patika.LibrarySystem.Entites.Book;
import dev.Patika.LibrarySystem.business.abstracs.IBookService;
import dev.Patika.LibrarySystem.dao.BookRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookManager implements IBookService {

    private final BookRepo bookRepo;

    public BookManager(BookRepo bookRepo) {
        this.bookRepo = bookRepo;
    }

    @Override
    public Book save(Book book) {
        return this.bookRepo.save(book);
    }

    @Override
    public Book update(Book book) {
        return this.bookRepo.save(book);
    }

    @Override
    public Book getById(Long id) {
        return this.bookRepo.findById(id).orElseThrow();
    }

    @Override
    public void delete(Long id) {
        this.bookRepo.deleteById(id);
    }

    @Override
    public List<Book> findAll(Book book) {
        return this.bookRepo.findAll();
    }
}
