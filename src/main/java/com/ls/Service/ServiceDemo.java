package com.ls.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ls.mapper.MapperDemo;
import com.ls.pojo.Users;

@Service("serviceDemo")
public class ServiceDemo {
	
	@Autowired
	private MapperDemo mapperDemo = null;
	public void inserUsers(Users user) {
		mapperDemo.insertUsers(user.getUser(),user.getSex(),user.getPhone(),user.getAddress(),user.getNote());
	}
	public List<Users> queryAll() {
		return mapperDemo.queryAll();
	}
	
}
