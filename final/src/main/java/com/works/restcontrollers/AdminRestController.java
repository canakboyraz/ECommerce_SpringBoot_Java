package com.works.restcontrollers;

import com.works.entities.Admin;
import com.works.services.AdminService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
@RequiredArgsConstructor
@RequestMapping("/admin")

public class AdminRestController {
    final AdminService adminService;

    @PostMapping ("/login")
    public ResponseEntity login(@RequestBody Admin admin){
        return adminService.loginAdmin(admin);
    }
}
