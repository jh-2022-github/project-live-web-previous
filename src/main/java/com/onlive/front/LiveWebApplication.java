package com.onlive.front;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.onlive"})
@MapperScan(basePackages = {"com.onlive.**.mapper"})
@EnableAutoConfiguration      //bean을 등록하는 자바 설정 파일
public class LiveWebApplication {

    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(LiveWebApplication.class);
        application.run(args);
    }
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) { 
        return builder.sources(LiveWebApplication.class); 
    }
}
