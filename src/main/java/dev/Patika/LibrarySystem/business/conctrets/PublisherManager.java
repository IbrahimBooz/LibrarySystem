package dev.Patika.LibrarySystem.business.conctrets;

import dev.Patika.LibrarySystem.Entites.Publisher;
import dev.Patika.LibrarySystem.business.abstracs.IPublisherService;
import dev.Patika.LibrarySystem.dao.PublisherRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublisherManager implements IPublisherService {


    private final PublisherRepo publisherRepo;

    public PublisherManager(PublisherRepo publisherRepo) {
        this.publisherRepo = publisherRepo;
    }

    @Override
    public Publisher save(Publisher publisher) {
        return this.publisherRepo.save(publisher);
    }

    @Override
    public Publisher update(Publisher publisher) {
        return this.publisherRepo.save(publisher);
    }


    @Override
    public Publisher getById(Long id) {
        return this.publisherRepo.findById(id).orElseThrow();
    }

    @Override
    public void delete(Long id) {
        this.publisherRepo.deleteById(id);
    }

    @Override
    public List<Publisher> findAll(Publisher publisher) {
        return this.publisherRepo.findAll();
    }
}
