package com.cleartravel.service;

import java.util.List;

import com.cleartravel.dto.UserDTO;
import com.cleartravel.exception.ClearTravelException;

public interface UserService {

	List<UserDTO> getAllUser() throws ClearTravelException;

	UserDTO getUserByid(String userId) throws ClearTravelException;

	String addNewUser(UserDTO user) throws ClearTravelException;

}
