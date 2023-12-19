package dev.Patika.LibrarySystem.api;


import dev.Patika.LibrarySystem.Entites.Category;
import dev.Patika.LibrarySystem.Entites.Publisher;
import dev.Patika.LibrarySystem.business.abstracs.IPublisherService;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/publisher")
public class PublisherController {

    private final IPublisherService publisherService;

    public PublisherController(IPublisherService publisherService) {
        this.publisherService = publisherService;
    }

    @GetMapping("/getAll")
    @ResponseStatus(HttpStatus.OK)
    public List<Publisher> findAll(@RequestBody Publisher publisher) {
        return this.publisherService.findAll(publisher);
    }

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public Publisher save(@RequestBody Publisher publisher) {
        return this.publisherService.save(publisher);
    }

    @PutMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public Publisher update(@RequestBody Publisher publisher) {
        return this.publisherService.update(publisher);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseStatus(HttpStatus.OK)
    void delete(@PathVariable("id") Long id) {
        this.publisherService.delete(id);
    }

    @GetMapping("/getById/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Publisher getById(@PathVariable("id") Long id) {
        return this.publisherService.getById(id);
    }
}
