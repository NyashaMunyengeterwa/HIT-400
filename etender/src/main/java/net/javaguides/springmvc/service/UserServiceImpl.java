package net.javaguides.springmvc.service;

import java.util.List;

import net.javaguides.springmvc.entity.Login;
import net.javaguides.springmvc.entity.Tender;
import net.javaguides.springmvc.entity.User;
import net.javaguides.springmvc.repository.TenderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.javaguides.springmvc.exception.ResourceNotFoundException;
import net.javaguides.springmvc.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Qualifier("userRepository")
	@Autowired
	private UserRepository userRepository;

	@Override
	@Transactional
	public List<User> getUsers() {
		return userRepository.findAll();
	}

	@Override
	@Transactional
	public void saveUser(User theUser) {
		userRepository.save(theUser);
	}

	@Override
	@Transactional
	public Login getLogin(String userName) throws ResourceNotFoundException {
		return userRepository.findByUserName(userName);
	}

	@Override
	@Transactional
	public User getUser(String id) throws ResourceNotFoundException {
		return userRepository.findById(id).orElseThrow(
				() -> new ResourceNotFoundException(id));
	}

	@Override
	@Transactional
	public void deleteUser(String theId) {
		userRepository.deleteById(theId);
	}

	@Override
	public User getUserById(String userId) {
		return  userRepository.getOne(userId);
	}

	@Override
	public User getUserByNationalId(String nationalId) {
		return  userRepository.getUserByNationalId(nationalId);
	}

}





