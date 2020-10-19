package com.qin.mall.api.config;

import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Configuration;

@EnableFeignClients(basePackages = { "com.qin.mall.api" })
@Configuration
public class FeignClientConfiguration {
}
