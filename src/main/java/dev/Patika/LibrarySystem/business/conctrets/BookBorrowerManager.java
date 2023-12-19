package dev.Patika.LibrarySystem.business.conctrets;

import dev.Patika.LibrarySystem.Entites.Book;
import dev.Patika.LibrarySystem.Entites.BookBorrower;
import dev.Patika.LibrarySystem.business.abstracs.IBookBorrowerService;
import dev.Patika.LibrarySystem.dao.BookBorrowerRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookBorrowerManager implements IBookBorrowerService {

    private final BookBorrowerRepo bookBorrowerRepo;

    public BookBorrowerManager(BookBorrowerRepo bookBorrowerRepo) {
        this.bookBorrowerRepo = bookBorrowerRepo;
    }

    @Override
    public BookBorrower save(BookBorrower bookBorrower) {
        return this.bookBorrowerRepo.save(bookBorrower);
    }

    @Override
    public BookBorrower update(BookBorrower bookBorrower) {

        return this.bookBorrowerRepo.save(bookBorrower);
    }

    @Override
    public BookBorrower getById(Long id) {
        return this.bookBorrowerRepo.findById(id).orElseThrow();
    }

    @Override
    public void delete(Long id) {
        this.bookBorrowerRepo.deleteById(id);
    }

    @Override
    public List<BookBorrower> findAll(BookBorrower bookBorrower) {
        return this.bookBorrowerRepo.findAll();
    }
}
