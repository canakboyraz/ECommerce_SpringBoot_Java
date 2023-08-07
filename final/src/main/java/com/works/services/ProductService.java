package com.works.services;

import com.works.configs.Rest;
import com.works.entities.Product;
import com.works.entities.User;
import com.works.entities.projections.IProduct;
import com.works.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.awt.*;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;



import java.util.zip.DataFormatException;

@Service
@RequiredArgsConstructor
public class ProductService {
    final ProductRepository productRepository;

    public ResponseEntity save(Product product){
        try{
            Optional<Product> optionalProduct = productRepository.findByNameEquals(product.getName());
            if (optionalProduct.isPresent()){
                return new ResponseEntity(product.getName() + " This Name Using! ", HttpStatus.BAD_REQUEST);
            }
            else {
                productRepository.save(product);
                return new ResponseEntity("Success ! ",HttpStatus.OK);
            }
        }catch (Exception ex){
            return new ResponseEntity(ex.getMessage(),HttpStatus.BAD_REQUEST);
        }
    }

    public ResponseEntity productList(){

        List<IProduct> carlist = productRepository.getProductsBy("Car",5);
        List<IProduct> homelist = productRepository.getProductsBy("Home",5);
        List<IProduct> electroniclist = productRepository.getProductsBy("Electronic",5);
        List<IProduct> kitchenlist = productRepository.getProductsBy("Kitchen",5);
        List<IProduct> dresslist = productRepository.getProductsBy("Dress",5);
        List<IProduct> shoeslist = productRepository.getProductsBy("Shoes",5);
        List<IProduct> foodlist = productRepository.getProductsBy("Food",5);
        Map hm = new LinkedHashMap();
        hm.put("Car",carlist);
        hm.put("Home",homelist);
        hm.put("Electronic",electroniclist);
        hm.put("Kitchen",kitchenlist);
        hm.put("Dress",dresslist);
        hm.put("Shoes",shoeslist);
        hm.put("Food",foodlist);
        return new ResponseEntity(hm,HttpStatus.OK);
    }

    public ResponseEntity allProductList(){
        List<IProduct> ls = productRepository.getProductsAllBy();
        Rest rest = new Rest(ls);
        return new ResponseEntity(rest,HttpStatus.OK);
    }

    public  boolean delete(Long pid){
        try {
            productRepository.deleteById(pid);
            return true;
        }catch (Exception ex){
            return false;
        }
    }

    public Product update ( Product product){
        Optional<Product> optionalProduct = productRepository.findById(product.getPid());
        if (optionalProduct.isPresent()){
            productRepository.saveAndFlush(product);
            return product;
        }
        return null;
    }

}
