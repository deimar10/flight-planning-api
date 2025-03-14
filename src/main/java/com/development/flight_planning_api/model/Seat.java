package com.development.flight_planning_api.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Entity
@Table(name = "seats") 
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder

public class Seat {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; 

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "flight_id", nullable = false)  // Foreign Key
    private Flight flight;
    @Column(name = "flight_id", updatable = false, insertable = false)
    private Long flightId;

    private String seatNumber; 
    private Boolean isOccupied; 
    private Boolean hasWindow; 
    private Boolean hasLegroom; 
    private Boolean closeToExit; 
}
