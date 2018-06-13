package com.lwyykj.user.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.lwyykj.core.bean.user.User;
import com.lwyykj.core.dao.user.UserDao;
import com.lwyykj.user.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao;

	@Override
	public User findById(Integer uid) {
		return userDao.selectByPrimaryKey(uid);
	}

}
