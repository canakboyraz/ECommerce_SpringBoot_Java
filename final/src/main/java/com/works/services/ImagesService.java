package com.works.services;

import com.works.entities.ProductImage;
import com.works.repositories.ProductImageRepository;
import com.works.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ImagesService {
    final ProductImageRepository productImageRepository;
    final ProductRepository productRepository;

    final HttpServletResponse response;
    final HttpServletRequest request;

    public ProductImage addImage(ProductImage productImage){
        productImageRepository.save(productImage);
        return productImage;
    }

    public List<ProductImage> list(Long pid){
        return productImageRepository.findByPidEquals(pid);
    }

}
