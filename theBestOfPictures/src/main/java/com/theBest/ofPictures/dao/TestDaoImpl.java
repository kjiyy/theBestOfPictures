package com.theBest.ofPictures.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository(TestDao.LOOKUP_NAME)
public class TestDaoImpl implements TestDao{
	
	@Inject
	private SqlSession sqlsession;
	
	@Override
	public int home() throws Exception {
		return sqlsession.selectOne("t_Mapper.home");
	}

}
