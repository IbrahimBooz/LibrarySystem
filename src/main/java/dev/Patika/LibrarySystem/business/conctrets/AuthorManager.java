package dev.Patika.LibrarySystem.business.conctrets;

import dev.Patika.LibrarySystem.Entites.Author;
import dev.Patika.LibrarySystem.business.abstracs.IAuthorService;
import dev.Patika.LibrarySystem.dao.AuthorRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorManager implements IAuthorService {

    private final AuthorRepo authorRepo;

    public AuthorManager(AuthorRepo authorRepo) {
        this.authorRepo = authorRepo;
    }

    @Override
    public Author save(Author author) {
        return this.authorRepo.save(author);
    }

    @Override
    public Author update(Author author) {

        Author existAuthor = authorRepo.findById(author.getId()).orElseThrow();
        existAuthor.setName(author.getName());
        existAuthor.setBirthDate(author.getBirthDate());
        existAuthor.setCountry(author.getCountry());
        existAuthor.setBookList(author.getBookList());
        return this.authorRepo.save(author);
    }


    @Override
    public Author getById(Long id) {
        return this.authorRepo.findById(id).orElseThrow();
    }

    @Override
    public void delete(Long id) {
        this.authorRepo.deleteById(id);
    }

    @Override
    public List<Author> findAll() {
        return this.authorRepo.findAll();
    }

}
