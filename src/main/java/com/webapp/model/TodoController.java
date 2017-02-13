package com.webapp.model;

import java.lang.reflect.Method;
import java.util.Date;

import javax.enterprise.inject.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class TodoController {
	@Autowired
	TodoService service;
	@RequestMapping(value="/list-todos", method=RequestMethod.GET)
	public String list_todos(ModelMap model)
	{
		model.addAttribute("todos",service.retrieveTodos("ajay"));
		return "list-todos";
	}
	@RequestMapping(value="/add-todo",method=RequestMethod.GET)
	public String addTodo(ModelMap model)
	{
	return "add-todo";	
	}
	
	@RequestMapping(value="/add-todo",method=RequestMethod.POST)
	public String redirectAfterAdd(ModelMap model,@RequestParam String desc)
	{
		service.addTodo("ajay", desc, new Date(), false);
		return "redirect:list-todos";	
	}
}
