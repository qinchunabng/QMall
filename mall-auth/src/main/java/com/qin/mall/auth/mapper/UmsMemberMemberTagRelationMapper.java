package com.qin.mall.auth.mapper;

import com.qin.mall.auth.domain.UmsMemberMemberTagRelation;

public interface UmsMemberMemberTagRelationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsMemberMemberTagRelation record);

    int insertSelective(UmsMemberMemberTagRelation record);

    UmsMemberMemberTagRelation selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsMemberMemberTagRelation record);

    int updateByPrimaryKey(UmsMemberMemberTagRelation record);
}