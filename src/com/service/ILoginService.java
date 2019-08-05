package com.service;

import com.po.TreeNode;
import com.po.UserInfo;

import java.util.List;
import java.util.Map;

public interface ILoginService {

    UserInfo login(UserInfo userInfo);
    List<TreeNode> selectResByName(String username);

    List<TreeNode> loadTreeByRoleChild(Map<String,Object> objectMap);

    UserInfo getUserRole(UserInfo userInfo1);
}
