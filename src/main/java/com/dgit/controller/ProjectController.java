package com.dgit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dgit.domain.ProjectVO;
import com.dgit.service.ProjectService;

@Controller
@RequestMapping("/project/*")
public class ProjectController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Autowired
	private ProjectService service;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void registGET(ProjectVO vo, Model model) throws Exception{
		logger.info("==========regist get=================");
		
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registPOST(ProjectVO vo, RedirectAttributes rttr) throws Exception{
		logger.info("=========regist post ==============");
		System.out.println("-=======================================");
		logger.info(vo.toString());
		
		service.regist(vo);
		
		rttr.addFlashAttribute("result", "success");
		
		return "redirect:/project/projectList";
	}
	@RequestMapping(value="/projectList", method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		System.out.println("====================all list==================");
		model.addAttribute("list", service.listAll());
	}
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public void read(@RequestParam("code") int code, Model model) throws Exception{
		model.addAttribute(service.read(code));
	}
	
	@RequestMapping(value="/remove", method=RequestMethod.POST)
	public String remove(@RequestParam("code") int code, RedirectAttributes rttr) throws Exception{
		service.remove(code);
		
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/project/projectList";
		
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void modifyGET(int code, Model model) throws Exception{
		model.addAttribute(service.read(code));
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modifyPOST(ProjectVO vo, RedirectAttributes rttr) throws Exception{
		
		logger.info("=========mod post ==============");		
		
		service.modify(vo);
		
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/project/projectList";
	}
}
