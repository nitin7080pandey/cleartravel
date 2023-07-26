package com.cleartravel.entity.compositekey;

import java.io.Serializable;
import java.time.DayOfWeek;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class FlightLegCompositeKey implements Serializable {
	
	private String flightNumber;
	private Integer legNumber;
	private DayOfWeek dayOfWeek;
	
	
	
	
	
	

}
