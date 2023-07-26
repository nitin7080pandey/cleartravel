package com.cleartravel.dto;

import java.time.LocalDate;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class LegInstanceDTO {

	private Integer serialNumber;
	private String flightNumber;
	private Integer legNumber;
	private LocalDate date;
	private Integer numberOfAvailableSeats;
	private String airplaneTypeName;
	private String departureAirportCode;
	private String departureTime;
	private String arrivalAirportCode;
	private String arrivalTime;
}
