package com.movieport.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.movieport.model.MemberVO;

public class LikesInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		
		if(mvo == null) {
			response.sendRedirect("/main");
			return false;
		} else {
			return true;
		}
		
	}
	

}
