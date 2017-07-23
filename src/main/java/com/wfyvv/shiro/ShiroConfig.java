package com.wfyvv.shiro;

import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;

import java.util.LinkedHashMap;

/**
 * Created by wfyyu on 2017-07-23 21:56.
 */
@Configuration
public class ShiroConfig {

	@Bean
	public ShiroFilterFactoryBean shiroFilter() {
		ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
		shiroFilterFactoryBean.setSecurityManager(securityManager());
		shiroFilterFactoryBean.setLoginUrl("/login");
		shiroFilterFactoryBean.setSuccessUrl("/");
		shiroFilterFactoryBean.setUnauthorizedUrl("/unauthorized");

		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		map.put("/static/css/*", "anon");
		map.put("/static/js/*", "anon");
		map.put("/static/images/*", "anon");
		map.put("/static/fonts/*", "anon");
		map.put("/login", "anon");
		map.put("/logout", "logout");
		map.put("/user", "authc,roles[user]");
		map.put("/**", "authc");
		shiroFilterFactoryBean.setFilterChainDefinitionMap(map);

		return shiroFilterFactoryBean;
	}

	@Bean
	public DefaultWebSecurityManager securityManager() {
		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
		securityManager.setRealm(userRealm());
		securityManager.setRememberMeManager(rememberMeManager());
		return securityManager;
	}

	@Bean
	@DependsOn({"lifecycleBeanPostProcessor"})
	public UserRealm userRealm() {
		UserRealm userRealm = new UserRealm();

		HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
		hashedCredentialsMatcher.setHashAlgorithmName("MD5");
		hashedCredentialsMatcher.setHashIterations(2);
		userRealm.setCredentialsMatcher(hashedCredentialsMatcher);

		return userRealm;
	}

	@Bean
	public CookieRememberMeManager rememberMeManager() {
		CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
		cookieRememberMeManager.getCookie().setMaxAge(30);//30秒
		return cookieRememberMeManager;
	}

	@Bean
	public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
		return new LifecycleBeanPostProcessor();
	}

}
