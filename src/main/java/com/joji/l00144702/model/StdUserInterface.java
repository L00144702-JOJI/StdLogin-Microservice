package com.joji.l00144702.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StdUserInterface extends JpaRepository<StdUser, Integer>{

	StdUser findByName(String stdname);

}
