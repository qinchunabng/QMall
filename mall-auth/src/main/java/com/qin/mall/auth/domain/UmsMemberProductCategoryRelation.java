package com.qin.mall.auth.domain;

public class UmsMemberProductCategoryRelation {
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
    private Long productCategoryId;

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

    public Long getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(Long productCategoryId) {
        this.productCategoryId = productCategoryId;
    }
}