package net.javaguides.springmvc.service;

import java.util.List;

import net.javaguides.springmvc.entity.Login;
import net.javaguides.springmvc.entity.Tender;
import net.javaguides.springmvc.entity.User;
import net.javaguides.springmvc.exception.ResourceNotFoundException;

public interface UserService {

	public List<User> getUsers();

	public void saveUser(User theUser);

	public Login getLogin(String theUserName) throws ResourceNotFoundException;

	public User getUser(String theId) throws ResourceNotFoundException;

	public void deleteUser(String theId) throws ResourceNotFoundException;

    User getUserById(String userId);

    User getUserByNationalId(String nationalId);
}
