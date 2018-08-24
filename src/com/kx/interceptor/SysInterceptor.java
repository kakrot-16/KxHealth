package com.kx.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SysInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest req,HttpServletResponse res,Object handle)throws Exception{
		HttpSession session = req.getSession();
		Object user = session.getAttribute("user");
		if(user==null){
			req.setAttribute("message", "���ȵ�¼!");
			req.getRequestDispatcher("/jsp/login.jsp").forward(req, res);
			return false;
		}
		return true;
	}
}
