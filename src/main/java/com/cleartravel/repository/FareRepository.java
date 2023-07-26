package com.cleartravel.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cleartravel.entity.Fare;
import com.cleartravel.entity.compositekey.FareCompositeId;

public interface FareRepository extends JpaRepository<Fare, FareCompositeId> {

	@Query("select f from Fare f where f.flightNumber in :flightId and f.fareCode=:passClass")
	List<Fare> getFarebyflightIdAndClass(@Param("flightId") List<String> flightIds, @Param("passClass") String passengerClass);
}
