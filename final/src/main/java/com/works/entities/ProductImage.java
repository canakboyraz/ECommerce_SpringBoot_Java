package com.works.entities;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;

@Data
@Entity
public class ProductImage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long imgID;
    private Long pid;

    private String Text;

    @Lob
    @Type(type = "org.hibernate.type.ImageType")
    private byte[] image;
}
