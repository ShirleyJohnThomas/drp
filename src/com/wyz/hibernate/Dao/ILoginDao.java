package com.wyz.hibernate.Dao;

import com.wyz.hibernate.pojo.TUser;

public interface ILoginDao {
	public TUser getUserById(String id);
}
