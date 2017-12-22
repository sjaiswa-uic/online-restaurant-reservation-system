package com.uic.restaurantmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.uic.restaurantmanagement.sessionmanagement.SessionManagementInterceptor;

@Configuration
public class WebConfiguration extends WebMvcConfigurerAdapter {
	
	@Autowired
	SessionManagementInterceptor interceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(interceptor).excludePathPatterns("/", "/login", "/loadlogin", "/contact", "/submitregistration");
	}
}