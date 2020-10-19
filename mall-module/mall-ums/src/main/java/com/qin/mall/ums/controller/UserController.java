package com.qin.mall.ums.controller;

import com.qin.mall.common.domain.Result;
import com.qin.mall.common.domain.bo.AdminUserDetails;
import com.qin.mall.ums.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Api("用户管理")
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UmsAdminService umsAdminService;

    @ApiOperation("获取用户信息")
    @GetMapping("/getDetail")
    public Result<AdminUserDetails> getDetailByName(String username){
        return Result.success(umsAdminService.getDetail(username));
    }
}
