package com.cleartravel.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cleartravel.entity.User;

public interface UserRepository extends JpaRepository<User, String> {

}
