package dev.Patika.LibrarySystem.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class BookBorrowerRequest {
    private Long id;

    private String borrowerName;

    private long bookId;

    private LocalDate returnDate;

}
