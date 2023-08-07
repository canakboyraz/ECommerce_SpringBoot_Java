package com.works.services;

import com.works.entities.Category;
import com.works.entities.User;
import com.works.repositories.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CategoryService {
    final CategoryRepository categoryRepository;

    public ResponseEntity CategorySave(Category category){
        try{
            Optional<Category> optionalCategory = categoryRepository.findByCNameEqualsIgnoreCase(category.getCName());
            if (optionalCategory.isPresent()){
                return new ResponseEntity(category.getCName() + " This Category Using! ", HttpStatus.BAD_REQUEST);
            }
            else {
                categoryRepository.save(category);
                return new ResponseEntity("Success ! ",HttpStatus.OK);
            }
        }catch (Exception ex){
            return new ResponseEntity(ex.getMessage(),HttpStatus.BAD_REQUEST);
        }
    }

    public  boolean delete(Long cid){
        try {
            categoryRepository.deleteById(cid);
            return true;
        }catch (Exception ex){
            return false;
        }
    }

    public Category update (Category category){
        Optional<Category> optionalCategory = categoryRepository.findById(category.getCid());
        if (optionalCategory.isPresent()){
            categoryRepository.saveAndFlush(category);
            return category;
        }
        return null;
    }
}
