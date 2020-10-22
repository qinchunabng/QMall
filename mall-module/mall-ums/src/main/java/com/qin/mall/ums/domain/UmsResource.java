package com.qin.mall.ums.domain;

import java.io.Serializable;
import java.util.Date;

public class UmsResource implements Serializable {

    private static final long serialVersionUID = 1471148428224591300L;

    /**
     *  
     */
    private Long id;

    /**
     *  创建时间
     */
    private Date createTime;

    /**
     *  资源名称
     */
    private String name;

    /**
     *  资源URL
     */
    private String url;

    /**
     *  描述
     */
    private String description;

    /**
     *  资源分类ID
     */
    private Long categoryId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }
}