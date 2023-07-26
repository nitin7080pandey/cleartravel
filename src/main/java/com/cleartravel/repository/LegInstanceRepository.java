package com.cleartravel.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cleartravel.entity.LegInstance;

public interface LegInstanceRepository extends JpaRepository<LegInstance, Integer> {

	@Query("select l from LegInstance l where l.date=:datefrom and (l.departureAirportCode=:source or l.arrivalAirportCode=:destination)")
    List<LegInstance> findLegIntancebyDateAndAiport(@Param("datefrom") LocalDate date, @Param("source") String source, @Param("destination") String destination);
	
	
	@Query("select l from LegInstance l where l.flightNumber=:flightNumber and l.date=:datefrom")
	List<LegInstance> findLegInstanceByFlightNumberAndDate(@Param("flightNumber") String flightNumber,@Param("datefrom") LocalDate date);
	
	@Query("select l from LegInstance l where l.flightNumber=:flightNumber and l.date=:datefrom and l.legNumber=:legnumber")
	LegInstance findLegInstanceByFlightNumberDateAndLegNumber(@Param("flightNumber") String flightNumber,@Param("datefrom") LocalDate date,@Param("legnumber") Integer legnumber);
	
}
