package com.cleartravel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableAsync
public class CleartravelApplication {

	public static void main(String[] args) {
		SpringApplication.run(CleartravelApplication.class, args);
	}

}
