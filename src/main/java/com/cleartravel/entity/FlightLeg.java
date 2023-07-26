package com.cleartravel.entity;

import java.time.DayOfWeek;

import com.cleartravel.entity.compositekey.FlightLegCompositeKey;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@IdClass(FlightLegCompositeKey.class)
@Data@AllArgsConstructor
@NoArgsConstructor
public class FlightLeg {

	@Id
	private String flightNumber;
	@Id
	private Integer legNumber;
	private String airplaneTypeName;
	private Integer totalNumberOfSeats;
	private String departureAirportCode;
	private String scheduledDepartureTime;
	private String arrivalAirportCode;
	private String scheduledArrivalTime;
	@Id
	private DayOfWeek dayOfWeek;
	
}
