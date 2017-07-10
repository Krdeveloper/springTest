package com.dgit.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dgit.domain.ProjectVO;

@Repository
public class ProjectDaoImpl implements ProjectDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.dgit.persistence.ProjectDao";
	
	@Override
	public String getTime() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".getTime");
	}

	@Override
	public void insertProject(ProjectVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insertProject", vo);
	}

	@Override
	public ProjectVO readProject(int code) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectByCode", code);
	}

	@Override
	public void update(ProjectVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".updateProject", vo);
	}

	@Override
	public void delete(int code) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".deleteProject", code);
	}

	@Override
	public List<ProjectVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listAll");
	}

}
