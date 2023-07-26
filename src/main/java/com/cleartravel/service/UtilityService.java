package com.cleartravel.service;

import java.util.List;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.exception.ClearTravelException;

public interface UtilityService {

	List<FlightBookingDetailDTO> findFlightdetailsByAirportAndDate(FlightBookingDetailDTO input)
			throws ClearTravelException;

	BookingDTO bookFlightForUser(FlightBookingDetailDTO flightBookingDTO) throws ClearTravelException;

}
