package com.dgit.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dgit.domain.ProjectVO;
import com.dgit.persistence.ProjectDao;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ProjectDaoTest {
	private Logger logger = LoggerFactory.getLogger(ProjectDaoTest.class);//log로 찍고 싶으면
	
	@Autowired
	private ProjectDao dao;
	
	/*@Test
	public void testTime() throws Exception{
		System.out.println(dao.getTime());
	}
	
	@Test
	public void testInsertProject() throws Exception{
		ProjectVO vo = new ProjectVO();
		vo.setName("네임");
		vo.setContent("컨텐트");
		vo.setState("보류");
		dao.insertProject(vo);
		
	}*/
	
	/*@Test
	public void testSelectByCode() throws Exception{
		
		dao.readProject(3);
	}*/
	
	/*@Test
	public void testUpdate() throws Exception{
		ProjectVO vo = new ProjectVO();
		vo.setCode(3);
		vo.setName("네네");
		vo.setContent("컨컨");
		vo.setState("완료");
		dao.update(vo);
	}*/
	
	@Test
	public void testListAll() throws Exception{
		dao.listAll();
	}
	
	@Test
	public void testDelete() throws Exception{
		dao.delete(3);
	}
}
