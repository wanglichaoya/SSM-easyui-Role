package com.service.impl;

import com.dao.ILoginDao;
import com.po.TreeNode;
import com.po.UserInfo;
import com.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class LoginServiceImpl implements ILoginService {

    @Autowired
    private ILoginDao loginDao;

    @Override
    public UserInfo login(UserInfo userInfo) {
        return loginDao.login(userInfo);
    }

    @Override
    public List<TreeNode> selectResByName(String username) {
        return loginDao.selectResByName(username);
    }

    @Override
    public List<TreeNode> loadTreeByRoleChild(Map<String,Object> map) {
        List<TreeNode> treeNodeList = loginDao.loadTreeByRoleChild(map);
        return treeNodeList;
    }

    @Override
    public UserInfo getUserRole(UserInfo userInfo1) {
        return loginDao.getUserRole(userInfo1);
    }
}
