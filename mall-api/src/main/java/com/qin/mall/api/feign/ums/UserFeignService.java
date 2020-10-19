package com.qin.mall.api.feign.ums;

import com.qin.mall.api.feign.fallback.UserFeignServiceFallback;
import com.qin.mall.common.domain.Result;
import com.qin.mall.common.domain.bo.AdminUserDetails;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author qinch
 */
@FeignClient(value = "mall-ums",path = "/user",fallback = UserFeignServiceFallback.class)
public interface UserFeignService {

    /**
     * 通过用户名获取用户信息
     * @param username
     * @return
     */
    @GetMapping("/getDetail")
    Result<AdminUserDetails> getDetailByName(String username);
}
