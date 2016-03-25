package com.wyz.service;

import com.wyz.hibernate.pojo.TUser;

public interface ILoginService {
	/**
	 * 登录验证
	 */
	public void checkLogin(TUser user) throws Exception;
}
