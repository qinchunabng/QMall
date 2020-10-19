package com.qin.mall.ums.mapper;

import com.qin.mall.ums.domain.UmsAdmin;

import java.util.List;

public interface UmsAdminMapper {
    int deleteByPrimaryKey(Long id);

    int insert(UmsAdmin record);

    int insertSelective(UmsAdmin record);

    UmsAdmin selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UmsAdmin record);

    int updateByPrimaryKey(UmsAdmin record);

    UmsAdmin select(UmsAdmin umsAdmin);

    List<UmsAdmin> selectList(UmsAdmin umsAdmin);
}