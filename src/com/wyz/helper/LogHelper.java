package com.wyz.helper;

import org.apache.log4j.Logger;

public class LogHelper{
	/**
	 * 开始方法
	 */
	private static final String bgnMsg = "=====方法开始=====";
	/**
	 * 结束方法
	 */
	private static final String endMsg = "=====方法结束=====";
	/**
	 * Logger对象
	 */
	public static final Logger LOGGER = Logger.getLogger("com.wyz");
	/**
	 * 获取开始方法
	 * @param msg
	 * @return
	 */
	public static String getBgnMsg(String msg){
		return bgnMsg+msg;
	}
	/**
	 * 获取结束方法
	 * @param msg
	 * @return
	 */
	public static String getEndMsg(String msg){
		return endMsg+msg;
	}
	

}
