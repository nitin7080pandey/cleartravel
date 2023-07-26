package com.cleartravel.service;

import java.time.DayOfWeek;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.FlightLegDTO;
import com.cleartravel.dto.LegInstanceDTO;
import com.cleartravel.entity.FlightLeg;
import com.cleartravel.exception.ClearTravelException;

public interface FlightLegService {

	FlightLeg addFlightLeg(FlightLegDTO flightLeg) throws ClearTravelException;

	List<FlightLegDTO> getAllFlightLeg() throws ClearTravelException;

	List<FlightLegDTO> getFlightLegByDayOFWeek(FlightBookingDetailDTO input) throws ClearTravelException;

	Integer getMaxSeatInTheflight(LegInstanceDTO leg) throws ClearTravelException;

}
