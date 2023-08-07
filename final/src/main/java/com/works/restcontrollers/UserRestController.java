package com.works.restcontrollers;

import com.works.entities.Product;
import com.works.entities.User;
import com.works.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import javax.validation.Valid;
@CrossOrigin
@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserRestController {
    final UserService userService;

    @PostMapping("/register")
    public ResponseEntity register(@Valid @RequestBody User user){
        return userService.register(user);
    }

    @PostMapping("/login")
    public ResponseEntity login(@RequestBody User user){
        return userService.login(user);
    }

    @GetMapping("/delete/{uid}")
    public boolean delete(@PathVariable Long uid){
        return userService.delete(uid);
    }

    @PostMapping("/update")
    public User update(@RequestBody User user){
        return userService.update(user);
    }
}
