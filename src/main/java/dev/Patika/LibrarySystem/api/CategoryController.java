package dev.Patika.LibrarySystem.api;


import dev.Patika.LibrarySystem.Entites.Book;
import dev.Patika.LibrarySystem.Entites.Category;
import dev.Patika.LibrarySystem.business.abstracs.ICategoryService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/category")
public class CategoryController {

    private final ICategoryService categoryService;

    public CategoryController(ICategoryService categoryService) {
        this.categoryService = categoryService;
    }


    @GetMapping("/getAll")
    @ResponseStatus(HttpStatus.OK)
    public List<Category> findAll(@RequestBody Category category) {
        return this.categoryService.findAll(category);
    }

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public Category save(@RequestBody Category category) {
        return this.categoryService.save(category);
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public Category update(@RequestBody Category category) {
        return this.categoryService.update(category);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    void delete(@PathVariable("id") Long id) {
        this.categoryService.delete(id);
    }

    @GetMapping("/getById/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Category getById(@PathVariable("id") Long id) {
        return this.categoryService.getById(id);
    }
}
