package dev.Patika.LibrarySystem.api;


import dev.Patika.LibrarySystem.Entites.Book;
import dev.Patika.LibrarySystem.Entites.BookBorrower;
import dev.Patika.LibrarySystem.business.abstracs.IBookService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/book")
public class BookController {

    private final IBookService bookService;

    public BookController(IBookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/getAll")
    @ResponseStatus(HttpStatus.OK)
    public List<Book> findAll(@RequestBody Book book) {
        return this.bookService.findAll(book);
    }

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public Book save(@RequestBody Book book) {
        return this.bookService.save(book);
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public Book update(@RequestBody Book book) {
        return this.bookService.update(book);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    void delete(@PathVariable("id") Long id) {
        this.bookService.delete(id);
    }

    @GetMapping("/getById/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Book getById(@PathVariable("id") Long id) {
        return this.bookService.getById(id);
    }
}
