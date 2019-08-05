package com.dao;

import com.po.UserInfo;

import java.util.List;

public interface IUserInfoDao {
    List<UserInfo> queryUser(UserInfo userInfo);

    int insert(UserInfo userInfo);

    int editUser(UserInfo userInfo);

    int delUser(int id);

    int queryTotal();
}
