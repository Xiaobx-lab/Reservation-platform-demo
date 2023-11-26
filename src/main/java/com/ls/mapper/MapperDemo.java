package com.ls.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.ls.pojo.Users;

@Mapper
public interface MapperDemo {
	void insertUsers(@Param("user")String user,@Param("sex")String sex,@Param("phone")String phone,@Param("address")String address,@Param("note")String note);
	@Select("select * from users")
	List<Users> queryAll();
	
}
