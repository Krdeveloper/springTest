package com.dgit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dgit.domain.ProjectVO;
import com.dgit.persistence.ProjectDao;

@Service
public class ProejctServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectDao dao;
	
	@Override
	public void regist(ProjectVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.insertProject(vo);
	}

	@Override
	public ProjectVO read(int code) throws Exception {
		// TODO Auto-generated method stub
		return dao.readProject(code);
	}

	@Override
	public void modify(ProjectVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void remove(int code) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(code);
	}

	@Override
	public List<ProjectVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

}
