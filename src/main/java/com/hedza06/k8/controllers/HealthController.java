package com.hedza06.k8.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/health")
public class HealthController {

    @GetMapping("check")
    public ResponseEntity<Map<String, String>> check() {
        return new ResponseEntity<>(Map.of("status", "OK"), HttpStatus.OK);
    }

}
