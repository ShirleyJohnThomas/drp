package com.wyz.exception;

public class LoginException extends Exception{
	private static final String loginSuf = "登录发生异常:";
	/**
	 * 
	 */
	private static final long serialVersionUID = 7361611307614019925L;
	public LoginException(String msg){
		super(msg);
	}
	
	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return loginSuf + super.getMessage();
	}
	
}
