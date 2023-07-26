package com.cleartravel.dto;

import lombok.AllArgsConstructor;
import lombok.Data;


@Data@AllArgsConstructor
public class AirportDTO {
	
	private Integer airportSrId;
	private String airportCode;
	private String airportName;
	private String airportCity;
	
}
