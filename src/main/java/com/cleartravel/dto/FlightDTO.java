package com.cleartravel.dto;

import com.cleartravel.entity.Flight;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data@AllArgsConstructor
public class FlightDTO {
	
	private String flightNumber;
	private String airline;
	private Boolean weekdays;
}
