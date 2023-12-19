package dev.Patika.LibrarySystem.Entites;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "author")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Author {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "serial")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "birthDate")
    private LocalDate birthDate;

    @Column(name = "country")
    private String country;

    @OneToMany(mappedBy = "author")
    @JsonIgnore
    private List<Book> bookList;


}
