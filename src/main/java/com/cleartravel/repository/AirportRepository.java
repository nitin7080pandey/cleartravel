package com.cleartravel.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cleartravel.entity.Airport;

public interface AirportRepository extends JpaRepository<Airport, Integer>{

}
