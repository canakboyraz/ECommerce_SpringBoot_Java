package com.works.entities;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long pid;

    @Size(min = 5, max = 50)
    @NotEmpty
    @NotNull
    private String name;

    @NotEmpty
    @NotNull
    private String detail;

    @Positive
    @NotNull
    private Integer price;

    private Long cid;



}
