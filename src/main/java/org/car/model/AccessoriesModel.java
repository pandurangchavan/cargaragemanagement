package org.car.model;

import java.math.BigDecimal;

public class AccessoriesModel {

    private int accessoriesId;
    private String name;
    private BigDecimal price;

    // Getters and Setters

    public int getAccessoriesId() {
        return accessoriesId;
    }

    public void setAccessoriesId(int accessoriesId) {
        this.accessoriesId = accessoriesId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "AccessoriesModel{" +
                "accessoriesId=" + accessoriesId +
                ", name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
