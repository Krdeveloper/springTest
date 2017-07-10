package com.dgit.persistence;

import java.util.List;

import com.dgit.domain.ProjectVO;

public interface ProjectDao {
	public String getTime();
	
	public void insertProject(ProjectVO vo);
	
	public ProjectVO readProject(int code) throws Exception;
	
	public void update(ProjectVO vo) throws Exception;
	
	public void delete(int code) throws Exception;
	
	public List<ProjectVO> listAll() throws Exception;
	
}
