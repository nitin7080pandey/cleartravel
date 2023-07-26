package com.cleartravel.repository;

import java.time.DayOfWeek;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cleartravel.entity.FlightLeg;
import com.cleartravel.entity.compositekey.FlightLegCompositeKey;

public interface FlightLegRepository extends JpaRepository<FlightLeg, FlightLegCompositeKey> {

	@Query("select f from FlightLeg f where f.dayOfWeek=:dayName and (f.departureAirportCode=:source or f.arrivalAirportCode=:destination) ")
	List<FlightLeg> getFlightLegByDayOfWeek(@Param("dayName") DayOfWeek day, @Param("source") String source, @Param("destination") String destination);
}
