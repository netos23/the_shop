package ru.fbtw.thestore.backend.models.enums;

public enum ProductSortEnum {
    BY_PRICE("BY_PRICE"),
    BY_NAME("BY_NAME"),
    BY_CATEGORY("BY_CATEGORY");

    private String sort;
    ProductSortEnum(String sort) {
        this.sort = sort;
    }
}
