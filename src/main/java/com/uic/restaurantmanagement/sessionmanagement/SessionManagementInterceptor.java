package com.uic.restaurantmanagement.sessionmanagement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.uic.restaurantmanagement.login.User;

@Component
public class SessionManagementInterceptor extends HandlerInterceptorAdapter {

    //private static final long MAX_INACTIVE_SESSION_TIME = 900000;

    /**
     * Executed before actual handler is executed
     **/
    @Override
    public boolean preHandle(final HttpServletRequest request, final HttpServletResponse response, final Object handler) throws Exception {
        
    	HttpSession session = request.getSession();
    	User user = (User) session.getAttribute("authenticatedUser");
        if (user != null) {
        	request.setAttribute("userId", user.getUserId());
        	return true;
        } else {
        	request.logout();
        	session.removeAttribute("authenticatedUser");
        	response.sendRedirect("/smriti/loadlogin");
        	return false;
        }
    }
}