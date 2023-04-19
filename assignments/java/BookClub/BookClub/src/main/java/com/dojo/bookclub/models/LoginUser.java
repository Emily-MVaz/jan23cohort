package com.dojo.bookclub.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

public class LoginUser {

	@NotBlank(message = "Email required!")
	@Email(message = "Please enter a valid email!")
	private String loginEmail;

	@NotBlank(message = "Password required!")
	private String loginPassword;

	public LoginUser() {
	}

	public String getLoginEmail() {
		return loginEmail;
	}

	public void setLoginEmail(String loginEmail) {
		this.loginEmail = loginEmail;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

}
