package com.wyz.interceptor;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class MethodInterceptor extends MethodFilterInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1760956601982290546L;

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		ServletActionContext.getRequest().getSession().getAttribute("123");
		System.out.println("方法拦截前");
		String url = arg0.invoke();
		System.out.println("方法拦截后");
		return url;
	}

}
