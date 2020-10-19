package com.qin.mall.auth.domain;

import java.math.BigDecimal;

public class UmsMemberRuleSetting {
    /**
     *  
     */
    private Long id;

    /**
     *  连续签到天数
     */
    private Integer continueSignDay;

    /**
     *  连续签到赠送数量
     */
    private Integer continueSignPoint;

    /**
     *  每消费多少元获取1个点
     */
    private BigDecimal consumePerPoint;

    /**
     *  最低获取点数的订单金额
     */
    private BigDecimal lowOrderAmount;

    /**
     *  每笔订单最高获取点数
     */
    private Integer maxPointPerOrder;

    /**
     *  类型：0->积分规则；1->成长值规则
     */
    private Integer type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getContinueSignDay() {
        return continueSignDay;
    }

    public void setContinueSignDay(Integer continueSignDay) {
        this.continueSignDay = continueSignDay;
    }

    public Integer getContinueSignPoint() {
        return continueSignPoint;
    }

    public void setContinueSignPoint(Integer continueSignPoint) {
        this.continueSignPoint = continueSignPoint;
    }

    public BigDecimal getConsumePerPoint() {
        return consumePerPoint;
    }

    public void setConsumePerPoint(BigDecimal consumePerPoint) {
        this.consumePerPoint = consumePerPoint;
    }

    public BigDecimal getLowOrderAmount() {
        return lowOrderAmount;
    }

    public void setLowOrderAmount(BigDecimal lowOrderAmount) {
        this.lowOrderAmount = lowOrderAmount;
    }

    public Integer getMaxPointPerOrder() {
        return maxPointPerOrder;
    }

    public void setMaxPointPerOrder(Integer maxPointPerOrder) {
        this.maxPointPerOrder = maxPointPerOrder;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}