package com.qin.mall.ums.domain;

import java.util.Date;

public class UmsResourceCategory {
    /**
     *  
     */
    private Long id;

    /**
     *  创建时间
     */
    private Date createTime;

    /**
     *  分类名称
     */
    private String name;

    /**
     *  排序
     */
    private Integer sort;

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

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }
}