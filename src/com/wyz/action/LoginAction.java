package com.wyz.action;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.wyz.helper.LogHelper;
import com.wyz.hibernate.pojo.TUser;
import com.wyz.service.ILoginService;

public class LoginAction{
	private ILoginService loginService;
	private String username;
	private String password;
	/**
	 * 
	 */
	private static final long serialVersionUID = -1796478786901556079L;
	
	public String execute() throws Exception {
		LogHelper.LOGGER.debug(LogHelper.getBgnMsg("LoginAction_execute"));
		LogHelper.LOGGER.debug(LogHelper.getEndMsg("LoginAction_execute"));
		return "success";
	}

	public void validate() {
		
	}

	
	public String login() throws Exception {
		String returnMsg = "error";
		try{
			LogHelper.LOGGER.debug(LogHelper.getBgnMsg("LoginAction_login"));
			TUser user = new TUser();
			user.setUserId(username);
			user.setPassword(password);
			loginService.checkLogin(user);
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("user", user);
			returnMsg = "success";
			LogHelper.LOGGER.debug(LogHelper.getEndMsg("LoginAction_login"));
		}catch(Exception e){
			e.printStackTrace();
			returnMsg="error";
			throw e;
		}finally{
			
		}
		return returnMsg;
	}

	public ILoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(ILoginService loginService) {
		this.loginService = loginService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
