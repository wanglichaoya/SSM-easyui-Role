package com.dao;

import com.po.TreeNode;

import java.util.List;
import java.util.Map;

public interface IResourceTreeDao {
    List<TreeNode> loadTreeByRoleParent();

    List<TreeNode> loadTreeByRoleChild(Map<String,Object> map);
}
