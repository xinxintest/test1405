package com.xinxin.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xinxin.user.dao.UserMapper;
import com.xinxin.user.entity.User;
import com.xinxin.user.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	public UserMapper userMapper ;

	@Override
	public void insert(User user) {
		userMapper.insert(user);
	}

	@Override
	public User login(User user) {
		return userMapper.login(user);
	}

	@Override
	public List<User> findAll() {
		return userMapper.findAll();
	}

	@Override
	public User findBySocial(String socialUid) {
		// TODO Auto-generated method stub
		return userMapper.findBySocial(socialUid);
	}

}
