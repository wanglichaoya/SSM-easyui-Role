package com.dao;

import com.po.TreeNode;
import com.po.UserInfo;

import java.util.List;
import java.util.Map;

public interface ILoginDao {

    UserInfo login(UserInfo userInfo);

    List<TreeNode> selectResByName(String username);

    List<TreeNode> loadTreeByRoleChild(Map<String, Object> map);

    UserInfo getUserRole(UserInfo userInfo1);
}
