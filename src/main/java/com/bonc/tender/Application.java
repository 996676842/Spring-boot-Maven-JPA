package com.bonc.tender;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

@SpringBootApplication
public class Application extends SpringBootServletInitializer{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
		
		return applicationBuilder.sources(Application.class);
	}
	public static void main(String[] args) throws Exception {
		SpringApplication.run(Application.class, args);
		// 运行之后在浏览器中访问：http://localhost:8080/hello
	}

}
