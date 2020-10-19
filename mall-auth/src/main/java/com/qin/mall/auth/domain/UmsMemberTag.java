package com.qin.mall.auth.domain;

import java.math.BigDecimal;

public class UmsMemberTag {
    /**
     *  
     */
    private Long id;

    /**
     *  
     */
    private String name;

    /**
     *  自动打标签完成订单数量
     */
    private Integer finishOrderCount;

    /**
     *  自动打标签完成订单金额
     */
    private BigDecimal finishOrderAmount;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getFinishOrderCount() {
        return finishOrderCount;
    }

    public void setFinishOrderCount(Integer finishOrderCount) {
        this.finishOrderCount = finishOrderCount;
    }

    public BigDecimal getFinishOrderAmount() {
        return finishOrderAmount;
    }

    public void setFinishOrderAmount(BigDecimal finishOrderAmount) {
        this.finishOrderAmount = finishOrderAmount;
    }
}