package com.qin.mall.common.domain.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author qinch
 */
@Data
public class UmsResourceDto implements Serializable {

    private static final long serialVersionUID = -6307408147105518940L;

    @ApiModelProperty("资源ID")
    private Long id;

    @ApiModelProperty("资源名称")
    private String name;

    @ApiModelProperty("资源URL")
    private String url;
}
