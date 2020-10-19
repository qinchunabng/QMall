package com.qin.mall.api.feign.fallback;

import com.qin.mall.api.feign.ums.UserFeignService;
import com.qin.mall.common.domain.Result;
import com.qin.mall.common.domain.bo.AdminUserDetails;
import org.springframework.stereotype.Component;

/**
 * @author qinch
 */
@Component
public class UserFeignServiceFallback implements UserFeignService {

    @Override
    public Result<AdminUserDetails> getDetailByName(String username) {
        return null;
    }
}
