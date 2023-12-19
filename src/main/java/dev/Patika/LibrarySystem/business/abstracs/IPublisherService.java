package dev.Patika.LibrarySystem.business.abstracs;

import dev.Patika.LibrarySystem.Entites.Publisher;

import java.util.List;

public interface IPublisherService {
    Publisher save(Publisher publisher);

    Publisher update(Publisher publisher);

    Publisher getById(Long id);

    void delete(Long id);

    List<Publisher> findAll(Publisher publisher);
}
