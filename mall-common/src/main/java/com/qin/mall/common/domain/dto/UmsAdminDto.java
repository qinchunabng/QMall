package com.qin.mall.common.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @author qinch
 */
@Data
public class UmsAdminDto implements Serializable {

    private static final long serialVersionUID = -5955984656168412194L;

    @ApiModelProperty("用户ID")
    private Long id;

    @ApiModelProperty("用户名")
    private String username;

    @ApiModelProperty("密码")
    private String password;

    @ApiModelProperty("帐号启用状态：0->禁用；1->启用")
    private Integer status;
}
