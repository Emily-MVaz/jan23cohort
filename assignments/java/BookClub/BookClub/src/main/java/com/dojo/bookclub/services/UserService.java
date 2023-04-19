package com.dojo.bookclub.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.dojo.bookclub.models.LoginUser;
import com.dojo.bookclub.models.User;
import com.dojo.bookclub.repositories.UserRepo;

@Service
public class UserService {

	@Autowired
	private UserRepo repo;

	public User register(User newUser, BindingResult result) {
		if (result.hasErrors()) {
			return null;
		}
		Optional<User> i = repo.findByEmail(newUser.getEmail());

		if (i.isPresent()) {
			result.rejectValue("email", "email", "Email is already registered!");
			return null;
		}

		if (!newUser.getPassword().equals(newUser.getConfirmPassword())) {
			result.rejectValue("confirmPassword", "password", "Passwords do not match!");
			return null;
		}

		String hashedPW = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		newUser.setPassword(hashedPW);
		return repo.save(newUser);
	}

	public User login(LoginUser newLogin, BindingResult result) {
		if (result.hasErrors()) {
			return null;
		}
		Optional<User> i = repo.findByEmail(newLogin.getLoginEmail());
		if (!i.isPresent()) {
			result.rejectValue("loginEmail", "email", "Email not found!");
			return null;
		}

		if (!BCrypt.checkpw(newLogin.getLoginPassword(), i.get().getPassword())) {
			result.rejectValue("loginPassword", "password", "Invalid Password!");
			return null;
		}
		return i.get();
	}

	public User getUser(Long id) {
		return repo.findById(id).orElse(null);
	}

	public List<User> getAllUsers() {
		return repo.findAll();
	}

}
