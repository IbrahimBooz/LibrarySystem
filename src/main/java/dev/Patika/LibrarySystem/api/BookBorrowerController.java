package dev.Patika.LibrarySystem.api;

import dev.Patika.LibrarySystem.Entites.Author;
import dev.Patika.LibrarySystem.Entites.BookBorrower;
import dev.Patika.LibrarySystem.business.abstracs.IBookBorrowerService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/borrower")
public class BookBorrowerController {

    private final IBookBorrowerService bookBorrowerService;

    public BookBorrowerController(IBookBorrowerService bookBorrowerService) {
        this.bookBorrowerService = bookBorrowerService;
    }

    @GetMapping("/getAll")
    @ResponseStatus(HttpStatus.OK)
    public List<BookBorrower> findAll(@RequestBody BookBorrower bookBorrower) {
        return this.bookBorrowerService.findAll(bookBorrower);
    }

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public BookBorrower save(@RequestBody BookBorrower bookBorrower) {
        return this.bookBorrowerService.save(bookBorrower);
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public BookBorrower update(@RequestBody BookBorrower bookBorrower) {
        return this.bookBorrowerService.update(bookBorrower);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    void delete(@PathVariable("id") Long id) {
        this.bookBorrowerService.delete(id);
    }

    @GetMapping("/getById/{id}")
    @ResponseStatus(HttpStatus.OK)
    public BookBorrower getById(@PathVariable("id") Long id) {
        return this.bookBorrowerService.getById(id);
    }
}
