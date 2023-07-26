package com.cleartravel.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "customer")
@Data@AllArgsConstructor
@NoArgsConstructor
public class User {
	
	@Id
	@Column(name = "customer_id")
	private String id;
	
	private String name;
	
	private String email;
	
	private String psswd;
	@OneToMany(mappedBy = "userId",cascade = CascadeType.ALL)
	private List<Booking> bookingList;
	

}
