package ru.fbtw.thestore.backend.models.DTO;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PagingDto {
    private Integer pageNumber;
    private Integer pageSize;
    private Integer totalPages;
}
