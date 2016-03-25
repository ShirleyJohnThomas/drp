package com.wyz.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.wyz.constants.CommonConstant;
import com.wyz.helper.LogHelper;

public class LoginInterceptor implements Interceptor {
	/**
	 * 
	 */
	private static final long serialVersionUID = 3549473720386925949L;
	private String someString;
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void init() {
		System.out.println(someString+"初始化");

	}

	public String intercept(ActionInvocation actionInvocation) throws Exception {
		LogHelper.LOGGER.debug(LogHelper.getBgnMsg("登录拦截开始"));
		//获得拦截器上下文
		ActionContext context = actionInvocation.getInvocationContext();
		//从上下文中获取session对象
		Map<String, Object> session = context.getSession();
		String aa = "";
		
		//是否已经登陆过
		boolean isLogind = session != null && CommonConstant.ISLOGIN.equals(session.get("loginFlag"));
		//是否跳转到登录页面
		boolean isToLogin = "toLoginAction".equals(actionInvocation.getProxy().getActionName()) && "execute".equals(actionInvocation.getProxy().getMethod());
		//是否登录请求
		boolean isLogin = "loginAction".equals(actionInvocation.getProxy().getActionName()) && "login".equals(actionInvocation.getProxy().getMethod());
		//如果已登录并且是登录请求，返回原页面
		if(isLogind && isLogin){
			aa = "success";
		}else if(isLogind || isToLogin || isLogin){
			aa = actionInvocation.invoke();
		}else {
			aa = "login";
		}
		LogHelper.LOGGER.debug(LogHelper.getBgnMsg("登录拦截结束"));
		return aa;
	}

	public String getSomeString() {
		return someString;
	}

	public void setSomeString(String someString) {
		this.someString = someString;
	}

}
