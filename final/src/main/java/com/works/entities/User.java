package com.works.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.*;

@Data
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long uid;

    @NotEmpty
    @NotNull
    private String name;

    @NotEmpty
    @NotNull
    private String surname;

    @Email
    @NotEmpty
    @NotNull
    private String email;

    @Size(min = 5, max = 12)
    @NotNull
    @NotEmpty
    private String password;

    @NotNull
    @Min(15)
    private Integer age;

}
