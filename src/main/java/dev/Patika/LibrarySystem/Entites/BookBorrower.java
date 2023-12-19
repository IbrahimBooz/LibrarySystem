package dev.Patika.LibrarySystem.Entites;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "bookborrower")
public class BookBorrower {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", columnDefinition = "serial")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "mail", unique = true)
    private String mail;

    @Temporal(TemporalType.DATE)
    @Column(name = "borrowerDate")
    private LocalDate borrowerDate;

    @Temporal(TemporalType.DATE)
    @Column(name = "returnDate")
    private LocalDate returnDate;


    @ManyToOne
    @JoinColumn(name = "bookBorrower_id", referencedColumnName = "id")
    private Book book;


}
