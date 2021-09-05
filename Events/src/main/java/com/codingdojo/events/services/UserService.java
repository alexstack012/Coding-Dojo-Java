package com.codingdojo.events.services;

import java.util.Optional;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;
import com.codingdojo.events.models.User;
//import com.codingdojo.events.repositories.EventRepository;
//import com.codingdojo.events.repositories.MessageRepository;
//import com.codingdojo.events.repositories.UserEventRepository;
import com.codingdojo.events.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepo;

	public User registerUser(@Validated User user) {
        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        return userRepo.save(user);
    }

	public boolean authenticateUser(String email, String password) {
        User user = userRepo.findByEmail(email);
        if(user == null) {
            return false;
        } else {
            if(BCrypt.checkpw(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }
    
}
	
//  ----------------------------------------------------------------
//  find 
//  ----------------------------------------------------------------
	
	

	public User findByEmail(String email) {
        return userRepo.findByEmail(email);
	}

	public User findUserById(Long user_id) {
		Optional<User> optionalUser = userRepo.findById(user_id);
		if (optionalUser.isPresent()) {
			return optionalUser.get();
		}else {
		return null;
	}}
}
