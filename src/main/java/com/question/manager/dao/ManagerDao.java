package com.question.manager.dao;

import org.springframework.stereotype.Repository;

import com.question.manager.entity.Manager;

@Repository
public interface ManagerDao{
	public void add(Manager manager);
}
