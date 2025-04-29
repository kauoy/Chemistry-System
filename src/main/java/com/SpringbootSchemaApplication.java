package com;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

import java.io.IOException;

@SpringBootApplication
@MapperScan(basePackages = {"com.dao"})
public class SpringbootSchemaApplication extends SpringBootServletInitializer{

	public static void main(String[] args) throws IOException {
		SpringApplication.run(SpringbootSchemaApplication.class, args);
		String url = "http://localhost:8081";
		Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler " + url);
	}
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
        return applicationBuilder.sources(SpringbootSchemaApplication.class);
    }
}
