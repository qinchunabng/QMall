package com.qin.mall.auth.domain;

import java.util.Date;

public class UmsMemberLoginLog {
    /**
     *  
     */
    private Long id;

    /**
     *  
     */
    private Long memberId;

    /**
     *  
     */
    private Date createTime;

    /**
     *  
     */
    private String ip;

    /**
     *  
     */
    private String city;

    /**
     *  登录类型：0->PC；1->android;2->ios;3->小程序
     */
    private Integer loginType;

    /**
     *  
     */
    private String province;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public Integer getLoginType() {
        return loginType;
    }

    public void setLoginType(Integer loginType) {
        this.loginType = loginType;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }
}