package com.training.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.training.Model.SeedStatus;
import com.training.repository.SeedStatusRepository;

@Service
public class SeedStatusService {

	@Autowired
	SeedStatusRepository seedStatusRepository;

	public List<SeedStatus> doGetSeedStatusList() {

		return seedStatusRepository.statusList();
	}

}
