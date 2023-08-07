package com.works.services;

import com.works.entities.Admin;
import com.works.repositories.AdminRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class AdminService {
    final AdminRepository adminRepository;
    final HttpServletRequest req;

    public ResponseEntity loginAdmin(Admin admin){
        Optional<Admin> optionalAdmin = adminRepository.findByEmailEqualsIgnoreCaseAndPasswordEqualsIgnoreCase(admin.getEmail(), admin.getPassword());
        if (optionalAdmin.isPresent()){
            return new ResponseEntity("Success", HttpStatus.OK);
        }else {
            return new ResponseEntity("Mail - Password !", HttpStatus.BAD_REQUEST);
        }
    }
}
