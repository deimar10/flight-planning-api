package com.development.flight_planning_api.repository;

import com.development.flight_planning_api.model.Flight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface FlightRepository extends JpaRepository<Flight, Long>{
    
}