package com.service;

import com.po.UserInfo;

import java.util.List;

public interface IUserInfoService {
    List<UserInfo> queryUser(UserInfo userInfo);

    int insert(UserInfo userInfo);

    int editUser(UserInfo userInfo);

    int delUser(int id);

    int queryTotal();
}
