package com.yaa;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.yaa.mapper")
public class SiteBlogApplication {

	public static void main(String[] args) {
		SpringApplication.run(SiteBlogApplication.class, args);
	}
}
