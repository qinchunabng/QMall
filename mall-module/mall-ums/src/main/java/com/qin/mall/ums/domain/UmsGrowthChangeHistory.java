package com.qin.mall.ums.domain;

import java.util.Date;

public class UmsGrowthChangeHistory {
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
     *  改变类型：0->增加；1->减少
     */
    private Integer changeType;

    /**
     *  积分改变数量
     */
    private Integer changeCount;

    /**
     *  操作人员
     */
    private String operateMan;

    /**
     *  操作备注
     */
    private String operateNote;

    /**
     *  积分来源：0->购物；1->管理员修改
     */
    private Integer sourceType;

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

    public Integer getChangeType() {
        return changeType;
    }

    public void setChangeType(Integer changeType) {
        this.changeType = changeType;
    }

    public Integer getChangeCount() {
        return changeCount;
    }

    public void setChangeCount(Integer changeCount) {
        this.changeCount = changeCount;
    }

    public String getOperateMan() {
        return operateMan;
    }

    public void setOperateMan(String operateMan) {
        this.operateMan = operateMan == null ? null : operateMan.trim();
    }

    public String getOperateNote() {
        return operateNote;
    }

    public void setOperateNote(String operateNote) {
        this.operateNote = operateNote == null ? null : operateNote.trim();
    }

    public Integer getSourceType() {
        return sourceType;
    }

    public void setSourceType(Integer sourceType) {
        this.sourceType = sourceType;
    }
}