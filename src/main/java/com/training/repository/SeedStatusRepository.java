package com.training.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.training.Model.SeedStatus;

public interface SeedStatusRepository extends JpaRepository<SeedStatus, Long> {

	@Query(value = "SELECT ss.status,ss.id FROM seed_status ss", nativeQuery = true)
	List<SeedStatus> statusList();

}
