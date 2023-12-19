package dev.Patika.LibrarySystem.business.conctrets;

import dev.Patika.LibrarySystem.Entites.Category;
import dev.Patika.LibrarySystem.business.abstracs.ICategoryService;
import dev.Patika.LibrarySystem.dao.CategoryRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryManager implements ICategoryService {

    private final CategoryRepo categoryRepo;

    public CategoryManager(CategoryRepo categoryRepo) {
        this.categoryRepo = categoryRepo;
    }

    @Override
    public Category save(Category category) {
        return this.categoryRepo.save(category);
    }

    @Override
    public Category update(Category category) {
        return this.categoryRepo.save(category);
    }

    @Override
    public Category getById(Long id) {
        return this.categoryRepo.findById(id).orElseThrow();
    }

    @Override
    public void delete(Long id) {
        this.categoryRepo.deleteById(id);
    }

    @Override
    public List<Category> findAll(Category category) {
        return this.categoryRepo.findAll();
    }
}
