package com.qin.mall.auth.component;

import org.springframework.security.access.ConfigAttribute;

import java.util.Map;

/**
 * 动态权限相关业务
 * @author qinch
 */
public interface DynamicSecurityService {

    /**
     * 加载资源Ant通配符和资源对应map
     * @return
     */
    Map<String, ConfigAttribute> loadDataSource();
}
