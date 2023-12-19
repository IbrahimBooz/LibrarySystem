package dev.Patika.LibrarySystem.api;

import dev.Patika.LibrarySystem.Entites.Author;
import dev.Patika.LibrarySystem.business.abstracs.IAuthorService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/author")
public class AuthorController {

    private final IAuthorService authorService;

    public AuthorController(IAuthorService authorService) {
        this.authorService = authorService;
    }

    @GetMapping("/getAll")
    @ResponseStatus(HttpStatus.OK)
    public List<Author> findAll() {
        return this.authorService.findAll();
    }

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public Author save(@RequestBody Author author) {
        return this.authorService.save(author);
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public Author update(@RequestBody Author author) {
        return this.authorService.update(author);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    void delete(@PathVariable("id") Long id) {
        this.authorService.delete(id);
    }

    @GetMapping("/getById/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Author getById(@PathVariable("id") Long id) {
        return this.authorService.getById(id);
    }
}
