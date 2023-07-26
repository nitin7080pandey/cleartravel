package com.cleartravel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cleartravel.dto.BookingDTO;
import com.cleartravel.dto.FlightBookingDetailDTO;
import com.cleartravel.exception.ClearTravelException;
import com.cleartravel.service.UtilityService;

@RestController
@RequestMapping(value = "/cleartravel.com")
@CrossOrigin
public class FlightBookingController {

	
	@Autowired
	UtilityService utilityService;
	
	@PostMapping("/bookflight")
	public ResponseEntity<BookingDTO> bookFlightForUser(@RequestBody FlightBookingDetailDTO flightBookingDTO) throws ClearTravelException{
		BookingDTO ticket = utilityService.bookFlightForUser(flightBookingDTO);
		return new ResponseEntity<BookingDTO>(ticket, HttpStatus.OK);
	}
}
