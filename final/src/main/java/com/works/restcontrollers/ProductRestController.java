package com.works.restcontrollers;

import com.works.entities.Product;
import com.works.entities.ProductImage;
import com.works.repositories.ProductImageRepository;
import com.works.services.ImagesService;
import com.works.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

@CrossOrigin
@RestController
@RequiredArgsConstructor
@RequestMapping("/product")
public class ProductRestController {

    final ProductService productService;
    final ImagesService imagesService;
    final ProductImageRepository imageRepository;

    Long pid = 0l;

    @PostMapping("/save")
    public ResponseEntity save (@Valid @RequestBody Product product){
        return productService.save(product);
    }

    @GetMapping("/list")
    public ResponseEntity list(){
        return productService.productList();
    }

    @GetMapping("/alllist")
    public ResponseEntity alllist(){
        return productService.allProductList();
    }

    @GetMapping("/delete/{pid}")
    public boolean delete(@PathVariable Long pid){
        return productService.delete(pid);
    }

    @PostMapping("/update")
    public Product update(@RequestBody Product product){
        return productService.update(product);
    }

    @PostMapping("/imageAdd")
    public ProductImage imageAdd(@RequestParam("image") MultipartFile file) throws IOException, SQLException {
        ProductImage productImage = new ProductImage();
        productImage.setPid(this.pid);
        byte[] fileBytes = file.getBytes();
        productImage.setImage(fileBytes);
        return imagesService.addImage(productImage);
    }

    @ResponseBody
    @GetMapping (value = "/getImage/{index}", produces = MediaType.IMAGE_JPEG_VALUE)
    public byte[] getImage( @PathVariable int index ) throws IOException, SQLException {
        return imageRepository.getImageBy(Long.valueOf(index));
    }
}
