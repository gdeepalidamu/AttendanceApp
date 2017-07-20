package com.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.training.Model.SeedStatus;
import com.training.service.SeedStatusService;

@CrossOrigin
@RestController
@RequestMapping("/seedStatus")
public class SeedStatusController {

	@Autowired
	SeedStatusService seedStatusService;

	@GetMapping("/list")
	public List<SeedStatus> getBatches() {
		return seedStatusService.doGetSeedStatusList();
	}
}
