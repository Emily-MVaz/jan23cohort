package com.dojo.LoginReg.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.dojo.LoginReg.models.LoginUser;
import com.dojo.LoginReg.models.User;
import com.dojo.LoginReg.repositories.UserRepo;

@Service
public class UserServices {

	@Autowired
	private UserRepo repo;

	public User register(User newUser, BindingResult result) {
		if (result.hasErrors()) {
			return null;
		}

		Optional<User> i = repo.findByEmail(newUser.getEmail());

		if (i.isPresent()) {
			result.rejectValue("email", "email", "Email is already in use!");
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
			result.rejectValue("loginEmail", "email", "Email not found");
			return null;
		}

		if (!BCrypt.checkpw(newLogin.getLoginPassword(), i.get().getPassword())) {
			result.rejectValue("loginPassword", "password", "Invalid Password!");
			return null;
		}
		return i.get();
	}

	public List<User> getAllUsers() {
		return repo.findAll();
	}

	public User getUser(Long id) {
		return repo.findById(id).orElse(null);
	}

}
