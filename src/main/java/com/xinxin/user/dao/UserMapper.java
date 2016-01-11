package com.xinxin.user.dao;

import java.util.List;

import com.xinxin.user.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    public User login( User user ) ;
    
    public List<User> findAll();
    
    public User findBySocial(String socialUid);
    
}