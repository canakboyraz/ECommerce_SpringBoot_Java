package com.works.services;

import com.works.entities.Product;
import com.works.entities.User;
import com.works.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService {

    final UserRepository userRepository;
    final HttpServletRequest req;

    public ResponseEntity register(User user){
        try{
            Optional<User> optionalUser = userRepository.findByEmailEqualsIgnoreCase(user.getEmail());
            if (optionalUser.isPresent()){
                return new ResponseEntity(user.getEmail() + " This Mail Using! ", HttpStatus.BAD_REQUEST);
            }
            else {
                userRepository.save(user);
                return new ResponseEntity("Success ! ",HttpStatus.OK);
            }
        }catch (Exception ex){
            return new ResponseEntity(ex.getMessage(),HttpStatus.BAD_REQUEST);
        }
    }


    public ResponseEntity login(User user){
        Optional<User> optionalUser = userRepository.findByEmailEqualsIgnoreCaseAndPasswordEqualsIgnoreCase(user.getEmail(), user.getPassword());
        if (optionalUser.isPresent()){
            return new ResponseEntity(optionalUser.get(),HttpStatus.OK);
        }else{
            return new ResponseEntity("Mail - Password !",HttpStatus.BAD_REQUEST);
        }
    }

    public  boolean delete(Long uid){
        try {
            userRepository.deleteById(uid);
            return true;
        }catch (Exception ex){
            return false;
        }
    }

    public User update (User user){
        Optional<User> optionalUser = userRepository.findById(user.getUid());
        if (optionalUser.isPresent()){
            userRepository.saveAndFlush(user);
            return user;
        }
        return null;
    }
}
