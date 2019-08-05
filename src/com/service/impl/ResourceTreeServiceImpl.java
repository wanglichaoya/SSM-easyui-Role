package com.service.impl;

import com.dao.IResourceTreeDao;
import com.po.TreeNode;
import com.service.IResourceTreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ResourceTreeServiceImpl implements IResourceTreeService {

    @Autowired
    private IResourceTreeDao iResourceTreeDao;
    @Override
    public List<TreeNode> loadTreeByRoleParent() {
        List<TreeNode> treeNodeList = iResourceTreeDao.loadTreeByRoleParent();
        return treeNodeList;
    }

    @Override
    public List<TreeNode> loadTreeByRoleChild(Map<String,Object> map) {
        List<TreeNode> treeNodeList = iResourceTreeDao.loadTreeByRoleChild(map);
        return treeNodeList;
    }
}
