package com.cleartravel.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.service.annotation.GetExchange;

import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.LegInstanceDTO;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.service.LegInstanceService;
import com.cleartravel.service.UtilityService;

@RestController
@RequestMapping(value = "/cleartravel.com")
@CrossOrigin
public class FlightSearchController {

	
	@Autowired
	LegInstanceService legInstanceService;
	
	@Autowired
	UtilityService utilityService;
	/*
	 * public String addFoo(@RequestParam(name = "id") String fooId, @RequestParam
	 * String name) { return "ID: " + fooId + " Name: " + name; }
	 *
	 * 
	 * http://localhost:1995/cleartravel.com/flightdetails
	 * ?arrivalAirportCode=BLR&
	 * departureAirportCode=BOM&
	 * dateOfFlight=2023-05-02&
	 * numberOfPassengers=2&travelClass=Y
	 */
	//
	@GetMapping("/flightdetails")
	public ResponseEntity<List<FlightBookingDetailDTO>> getAvailableFlight(@RequestParam(name="arrivalAirportCode") String arrival,
			@RequestParam(name = "departureAirportCode") String departure,@RequestParam(name = "dateOfFlight") LocalDate dateOfFlight,
			@RequestParam(name = "numberOfPassengers") Integer numberOfPassengers,@RequestParam(name = "travelClass") String travelClass)throws ClearTravelException{
		FlightBookingDetailDTO input = new FlightBookingDetailDTO();
		input.setArrivalAirportCode(arrival);
		input.setDepartureAirportCode(departure);
		input.setNumberOfPassengers(numberOfPassengers);
		input.setTravelClass(travelClass);
		input.setDateOfFlight(dateOfFlight);
		List<FlightBookingDetailDTO> fareList = utilityService.findFlightdetailsByAirportAndDate(input);
		return new ResponseEntity<List<FlightBookingDetailDTO>>(fareList, HttpStatus.OK);
	}
	
}
