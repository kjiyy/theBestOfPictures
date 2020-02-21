package com.theBest.ofPictures.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.theBest.ofPictures.dao.TestDao;

@Service(TestService.LOOKUP_NAME)
public class TestServiceImpl implements TestService{

	@Resource(name="testDao")
	private TestDao testDao;

	@Override
	public int home() throws Exception {
		return testDao.home();
	}
	
}




