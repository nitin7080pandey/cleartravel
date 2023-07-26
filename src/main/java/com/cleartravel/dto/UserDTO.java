package com.cleartravel.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data@AllArgsConstructor@NoArgsConstructor
public class UserDTO {

private String id;
	
	private String name;
	
	private String email;
	
	private String psswd;
	
	private List<BookingDTO> bookingList;

	
	
	
}
