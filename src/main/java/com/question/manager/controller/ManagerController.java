package com.question.manager.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.question.manager.entity.Manager;
import com.question.manager.service.ManagerService;

@Controller
public class ManagerController {

	@Resource
	private ManagerService managerService;
	
	@RequestMapping("manager/add.json")
	@ResponseBody
	public String add(Manager manager){
		managerService.add(manager);
		return "1";
	}
}
