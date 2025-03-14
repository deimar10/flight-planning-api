package com.development.flight_planning_api.controller;

import com.development.flight_planning_api.model.Flight;
import com.development.flight_planning_api.model.Seat;
import com.development.flight_planning_api.service.FlightService;
import com.development.flight_planning_api.service.SeatService;

import lombok.RequiredArgsConstructor;

import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/flights")
@RequiredArgsConstructor

public class FlightController {
    private final FlightService flightService;
    private final SeatService seatService;

    // Get all flights
    @GetMapping
    public List<Flight> getAllFlights() {
        return flightService.getAllFlights();
    }

    // Get seats for a specific flight using SeatService
    @GetMapping("/{id}/seats")
    public List<Seat> getSeatsByFlightId(@PathVariable Long id) throws Exception {
        return seatService.getFlightSeats(id);
    }
}
