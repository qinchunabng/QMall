package com.qin.mall.auth.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.ArrayList;
import java.util.List;

@Data
@ConfigurationProperties(prefix = "secure.ignored")
public class IgnoreUrlProperties {

    private List<String> urls = new ArrayList<>();
}
