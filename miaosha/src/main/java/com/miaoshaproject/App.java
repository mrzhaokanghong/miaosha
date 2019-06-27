package com.miaoshaproject;

import com.miaoshaproject.dao.UserDOMapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

/**
 * Hello world!
 *
 */
@SpringBootApplication(scanBasePackages ={"com.miaoshaproject"})  //扫描bean
@RestController
@MapperScan("com.miaoshaproject.dao")
public class App {

    @Autowired
    private UserDOMapper userDOMapper;

    public static void main( String[] args ) {
        SpringApplication.run(App.class,args);
    }

}
