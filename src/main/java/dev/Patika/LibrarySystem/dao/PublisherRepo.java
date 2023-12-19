package dev.Patika.LibrarySystem.dao;

import dev.Patika.LibrarySystem.Entites.Publisher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PublisherRepo extends JpaRepository<Publisher, Long> {
}
