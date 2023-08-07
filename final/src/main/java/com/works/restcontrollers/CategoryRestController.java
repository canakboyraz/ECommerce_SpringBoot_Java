package com.works.restcontrollers;

import com.works.entities.Category;
import com.works.entities.User;
import com.works.services.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
@CrossOrigin
@RestController
@RequiredArgsConstructor
@RequestMapping("/category")
public class CategoryRestController {
    final CategoryService categoryService;

    @PostMapping("/save")
    public ResponseEntity save(@Valid @RequestBody Category category){
        return categoryService.CategorySave(category);
    }

    @GetMapping("/delete/{cid}")
    public boolean delete(@PathVariable Long cid){
        return categoryService.delete(cid);
    }

    @PostMapping("/update")
    public Category update(@RequestBody Category category){
        return categoryService.update(category);
    }
}
