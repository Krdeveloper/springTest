package com.dgit.service;

import java.util.List;

import com.dgit.domain.ProjectVO;

public interface ProjectService {
	public void regist(ProjectVO vo) throws Exception;
	
	public ProjectVO read(int code) throws Exception;
	
	public void modify(ProjectVO vo) throws Exception;
	
	public void remove(int code) throws Exception;
	
	public List<ProjectVO> listAll() throws Exception;
}
