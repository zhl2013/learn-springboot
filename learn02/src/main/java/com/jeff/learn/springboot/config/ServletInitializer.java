package com.jeff.learn.springboot.config;

import javax.servlet.Filter;
import javax.sql.DataSource;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.liquibase.LiquibaseProperties;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.jeff.learn.springboot.Application;

import liquibase.integration.spring.SpringLiquibase;

@Configuration
@ComponentScan
@EnableAutoConfiguration
public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}

	/**
	 * http编码
	 * 
	 * @return
	 */
	@Bean
	public Filter characterEncodingFilter() {
		CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
		characterEncodingFilter.setEncoding("UTF-8");
		characterEncodingFilter.setForceEncoding(true);
		return characterEncodingFilter;
	}

	/**
	 * 处理上传附件，但另一个作用是控制管理台权限，不可删除
	 * 
	 * @return
	 */
	@Bean
	public MultipartResolver multipartResolver() {
		return new CommonsMultipartResolver();
	}

	@Bean
	@ConditionalOnBean(LiquibaseProperties.class)
	public SpringLiquibase liquibase(DataSource dataSource, LiquibaseProperties liquibaseProperties) {
		SpringLiquibase result = new SpringLiquibase();
		result.setDataSource(dataSource);
		result.setChangeLog(liquibaseProperties.getChangeLog());
		result.setContexts(liquibaseProperties.getContexts());
		// 是否启动
		result.setShouldRun(liquibaseProperties.isEnabled());
		return result;
	}
}