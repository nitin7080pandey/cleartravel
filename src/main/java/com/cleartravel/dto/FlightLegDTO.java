package com.cleartravel.dto;

import java.time.DayOfWeek;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data@AllArgsConstructor@NoArgsConstructor
public class FlightLegDTO {
	
	private String flightNumber;
	private Integer legNumber;
	private String airplaneTypeName;
	private Integer totalNumberOfSeats;
	private String departureAirportCode;
	private String scheduledDepartureTime;
	private String arrivalAirportCode;
	private String scheduledArrivalTime;
	private DayOfWeek dayOfWeek;
	
}
