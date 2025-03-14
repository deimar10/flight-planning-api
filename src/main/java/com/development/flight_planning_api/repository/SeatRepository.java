package com.development.flight_planning_api.repository;

import com.development.flight_planning_api.model.Flight;
import com.development.flight_planning_api.model.Seat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SeatRepository extends JpaRepository<Seat, Long> {
    List<Seat> findByFlight(Flight flight);
}