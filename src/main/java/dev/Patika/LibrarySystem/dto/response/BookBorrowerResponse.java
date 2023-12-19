package dev.Patika.LibrarySystem.dto.response;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class BookBorrowerResponse {
    @NotBlank
    public String borrowerName;

    @NotBlank
    private String borrowingDate;

    @NotBlank
    private long bookId;
}
