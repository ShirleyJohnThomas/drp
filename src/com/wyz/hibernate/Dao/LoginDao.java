package com.wyz.hibernate.Dao;

import com.wyz.helper.LogHelper;
import com.wyz.hibernate.pojo.TUser;

public class LoginDao extends BaseDao implements ILoginDao{
	public TUser getUserById(String id){
		LogHelper.LOGGER.debug(LogHelper.getBgnMsg("LoginDao_getUserById"));
		TUser user = (TUser) this.getHibernateTemplate().get(TUser.class, id);
		LogHelper.LOGGER.debug(LogHelper.getBgnMsg("LoginDao_getUserById"));
		return user;
	}
}
