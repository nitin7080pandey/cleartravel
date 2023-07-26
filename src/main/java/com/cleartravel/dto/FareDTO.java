package com.cleartravel.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FareDTO {

	private String flightNumber;
	private String fareCode;
	private Integer amount;
	private Boolean restrictions;
}
