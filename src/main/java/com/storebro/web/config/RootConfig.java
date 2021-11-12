package com.storebro.web.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
@ComponentScan(basePackages = {"com.storebro.web"})
public class RootConfig 
{
	@Bean
	public DataSource dataSource()
	{
		DriverManagerDataSource mysqlConfig = new DriverManagerDataSource();
		mysqlConfig.setDriverClassName("com.mysql.jdbc.Driver");
		mysqlConfig.setUrl("jdbc:mysql://localhost:3306/storebro");
		mysqlConfig.setUsername("root");
		mysqlConfig.setPassword("1234");
		return mysqlConfig;
	}
}
