package com.xinxin.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.xinxin.user.dao.UserMapper;
import com.xinxin.user.entity.User;

public interface UserService {
	
	public void insert(User user) ;
	
	public User login(User user ) ;

    public List<User> findAll();
    
    public User findBySocial(String socialUid );


}
