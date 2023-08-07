package com.works.repositories;

import com.works.entities.ProductImage;
import com.works.entities.projections.IProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductImageRepository extends JpaRepository<ProductImage, Long> {
    List<ProductImage> findByPidEquals(Long pid);

    @Query(value = "select pi.image from product_image pi where pi.pid = ?1", nativeQuery = true)
    byte[] getImageBy(Long index);




}