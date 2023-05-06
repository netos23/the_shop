package ru.fbtw.thestore.backend.models.enums;

public enum ProductCategoryEnum {
    DAIRY("DAIRY"),
    VEGETABLES("VEGETABLES"),
    FRUITS("FRUITS"),
    CEREALS("CEREALS"),
    BREAD("BREAD"),
    BAKERY("BAKERY"),
    DRINKS("DRINKS");

    private String category;
    ProductCategoryEnum(String category) {
        this.category = category;
    }
}
