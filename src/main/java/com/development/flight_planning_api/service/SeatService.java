package com.development.flight_planning_api.service;

import org.springframework.stereotype.Service;

import com.development.flight_planning_api.model.Flight;
import com.development.flight_planning_api.model.Seat;
import com.development.flight_planning_api.repository.FlightRepository;
import com.development.flight_planning_api.repository.SeatRepository;

import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class SeatService {
    private final SeatRepository seatRepository;
    private final FlightRepository flightRepository;

    public List<Seat> getFlightSeats(Long flightId) throws Exception {
        Flight flight = flightRepository.findById(flightId).orElseThrow(EntityNotFoundException::new);
        List<Seat> seats = seatRepository.findByFlight(flight);

        return seats.stream().map(seat -> Seat.builder()
            .id(seat.getId())
            .flightId(seat.getFlightId())
            .seatNumber(seat.getSeatNumber())
            .isOccupied(seat.getIsOccupied())
            .hasWindow(seat.getHasWindow())
            .hasLegroom(seat.getHasLegroom())
            .closeToExit(seat.getCloseToExit())
            .build()
        ).collect(Collectors.toList());
    }
}
