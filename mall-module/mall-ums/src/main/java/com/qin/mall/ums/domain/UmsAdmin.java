package com.qin.mall.ums.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * @author qinch
 */
public class UmsAdmin implements Serializable {

    private static final long serialVersionUID = 7648171286628172888L;
    /**
     *  
     */
    private Long id;

    /**
     *  
     */
    private String username;

    /**
     *  
     */
    private String password;

    /**
     *  头像
     */
    private String icon;

    /**
     *  邮箱
     */
    private String email;

    /**
     *  昵称
     */
    private String nickName;

    /**
     *  备注信息
     */
    private String note;

    /**
     *  创建时间
     */
    private Date createTime;

    /**
     *  最后登录时间
     */
    private Date loginTime;

    /**
     *  帐号启用状态：0->禁用；1->启用
     */
    private Integer status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName == null ? null : nickName.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}