package com.cleartravel.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FlightBookingDetailDTO {

	private String flightNumber;
	private String airline;
	private String departureAirportCode;
	private String departureTime;
	private String arrivalAirportCode;
	private String arrivalTime;
	private Integer amount;
	private Integer numberOfPassengers;
	private String travelClass;
	private LocalDate dateOfFlight;
	private String customerName;
	private String customerPhone;
	private String userID;
	private Integer availableSeats;
	private FlightBookingDetailDTO connectedFlight;
	
}
