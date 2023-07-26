package com.cleartravel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import com.cleartravel.entity.Booking;

public interface BookingRepository extends JpaRepository<Booking, Integer>{

}
