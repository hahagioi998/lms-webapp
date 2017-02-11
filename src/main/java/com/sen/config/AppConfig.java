package com.sen.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan( basePackages="com.sen")
@EnableWebMvc
public class AppConfig {

	
}
