package com.cleartravel.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

import com.cleartravel.dto.AirportDTO;
import com.cleartravel.dto.FareDTO;
import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.dto.FlightDTO;
import com.cleartravel.dto.FlightLegDTO;
import com.cleartravel.dto.LegInstanceDTO;
import com.cleartravel.dto.UserDTO;
import com.cleartravel.entity.Flight;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.repository.FareRepository;
import com.cleartravel.repository.FlightRepository;
import com.cleartravel.service.AirportService;
import com.cleartravel.service.FareService;
import com.cleartravel.service.FlightLegService;
import com.cleartravel.service.FlightService;
import com.cleartravel.service.LegInstanceService;
import com.cleartravel.service.UserService;

@RestController
@RequestMapping(value = "/cleartravel.com")
@CrossOrigin
public class FlightController {

	@Autowired
	FlightRepository flightRepo;
	
	@Autowired
	FlightService flightService;
	
	@Autowired
	AirportService airportService;
	
	@Autowired
	FlightLegService flightLegService;
	
	@Autowired
	FareService fareService;
	
	@Autowired
	LegInstanceService legInstanceService;
	
	@Autowired
	UserService userService;
	
	
	@GetMapping("/flight")
	public ResponseEntity<List<FlightDTO>> getFlightDTOStarted(){
		
		List<FlightDTO> list = flightService.getAllFlights();
		
		return new ResponseEntity<List<FlightDTO>>(list, HttpStatus.OK);
	}
	
	
	@GetMapping("/airport")
	public ResponseEntity<List<AirportDTO>> getAllAirport() throws ClearTravelException{
		List<AirportDTO> airList = airportService.getAllAirports();
		return new ResponseEntity<List<AirportDTO>>(airList, HttpStatus.OK);
	}
	
	@GetMapping("/flightlegs")
	public ResponseEntity<List<FlightLegDTO>> getAllFlightLeg() throws ClearTravelException{
		List<FlightLegDTO> legList = flightLegService.getAllFlightLeg();
		return new ResponseEntity<List<FlightLegDTO>>(legList, HttpStatus.OK);
	}
	
	
	@GetMapping("/fares")
	public ResponseEntity<List<FareDTO>> getAllFare() throws ClearTravelException {
		List<FareDTO> fareList = fareService.getAllFare();
		return new ResponseEntity<List<FareDTO>>(fareList, HttpStatus.OK);
	}
	 
	
	@GetMapping("/legsinstances")
	public ResponseEntity<List<LegInstanceDTO>> getAllLegInstances() throws ClearTravelException {
		List<LegInstanceDTO> fareList = legInstanceService.getAllLegInstance();
		return new ResponseEntity<List<LegInstanceDTO>>(fareList, HttpStatus.OK);
	}
	
	@GetMapping("/legsinstance/seatsavailable")
	public ResponseEntity<HashMap<Integer, Integer>> getAllLegInstancesForDate(@RequestBody FlightBookingDetailDTO detail) throws ClearTravelException {
		HashMap<Integer, Integer> seatsAvailable = legInstanceService.getSeatAvailableByFlightAndJourneyDate(detail.getFlightNumber(), detail.getDateOfFlight());
		return new ResponseEntity<HashMap<Integer, Integer>>(seatsAvailable, HttpStatus.OK);
	}
	
	
	@GetMapping("/users")
	public ResponseEntity<List<UserDTO>> getAllUsers() throws ClearTravelException {
		List<UserDTO> fareList = userService.getAllUser();
		return new ResponseEntity<List<UserDTO>>(fareList, HttpStatus.OK);
	}
	
	@GetMapping("/user")
	public ResponseEntity<UserDTO> getUserById(@RequestParam("id") String userId) throws ClearTravelException {
		UserDTO userDto = userService.getUserByid(userId);
		return new ResponseEntity<UserDTO>(userDto, HttpStatus.OK);
	}
	
}
