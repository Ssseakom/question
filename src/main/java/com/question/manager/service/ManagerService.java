package com.question.manager.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.question.manager.dao.ManagerDao;
import com.question.manager.entity.Manager;

@Service
public class ManagerService{

	@Resource
	private ManagerDao managerDao;
	
	public void add(Manager manager) {
		managerDao.add(manager);
		
	}

}
