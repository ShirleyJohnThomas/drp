package com.wyz.service;

import com.wyz.exception.LoginException;
import com.wyz.helper.LogHelper;
import com.wyz.hibernate.Dao.ILoginDao;
import com.wyz.hibernate.pojo.TUser;

public class LoginService implements ILoginService{
	private ILoginDao loginDao;
	public ILoginDao getLoginDao() {
		return loginDao;
	}
	public void setLoginDao(ILoginDao loginDao) {
		this.loginDao = loginDao;
	}
	/**
	 * 登录验证
	 */
	public void checkLogin(TUser user) throws Exception{
		LogHelper.LOGGER.debug(LogHelper.getBgnMsg("LoginService_checkLogin"));
		if(user.getUserId() == null || "".equals(user.getUserId())){
			throw new LoginException("用户名和密码不能为空");
		}
		TUser tUser = loginDao.getUserById(user.getUserId());
		if(tUser == null || !tUser.getPassword().equals(user.getPassword())){
			throw new LoginException("用户名或者密码不正确");
		}
		LogHelper.LOGGER.debug(LogHelper.getBgnMsg("LoginService_checkLogin"));
		
	}
}
