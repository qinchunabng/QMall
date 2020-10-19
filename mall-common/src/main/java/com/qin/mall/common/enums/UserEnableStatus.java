package com.qin.mall.common.enums;

import lombok.Getter;

/**
 * @author qinch
 */

@Getter
public enum UserEnableStatus {
    DISABLE(0,"禁用"),
    ENABLE(1,"启用");

    private int code;

    private String desc;

    UserEnableStatus(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }
}
