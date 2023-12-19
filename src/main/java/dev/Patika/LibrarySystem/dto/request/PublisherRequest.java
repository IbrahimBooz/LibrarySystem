package dev.Patika.LibrarySystem.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PublisherRequest {
    private String name;

    private int establishmentYear;

    private String address;
}
