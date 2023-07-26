package com.cleartravel.dto;

import java.time.LocalDate;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor
@NoArgsConstructor
public class BookingDTO {


	private Integer bookingId;
	
	private String flightNumber;

	private String legNumber;

	private LocalDate dateOfFlight;

	private String seatNumber;
	
	private String customerName;
	
	private String customerPhone;
	
	private String userId;
	
	private String departureAirportCode;
	private String departureTime;
	private String arrivalAirportCode;
	private String arrivalTime;
	
	private String airline;

	public BookingDTO(String flightNumber, String legNumber, LocalDate dateOfFlight, String seatNumber, String customerName,
			String customerPhone, String userId) {
		super();
		this.flightNumber = flightNumber;
		this.legNumber = legNumber;
		this.dateOfFlight = dateOfFlight;
		this.seatNumber = seatNumber;
		this.customerName = customerName;
		this.customerPhone = customerPhone;
		this.userId = userId;
	}

	public BookingDTO(Integer bookingId, String flightNumber, String legNumber, LocalDate dateOfFlight,
			String seatNumber, String customerName, String customerPhone, String userId) {
		super();
		this.bookingId = bookingId;
		this.flightNumber = flightNumber;
		this.legNumber = legNumber;
		this.dateOfFlight = dateOfFlight;
		this.seatNumber = seatNumber;
		this.customerName = customerName;
		this.customerPhone = customerPhone;
		this.userId = userId;
	}
	
	
	
	
}
