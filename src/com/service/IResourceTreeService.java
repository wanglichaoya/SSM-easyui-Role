package com.service;

import com.po.TreeNode;

import java.util.List;
import java.util.Map;

public interface IResourceTreeService {

    List<TreeNode> loadTreeByRoleParent();

    List<TreeNode> loadTreeByRoleChild(Map<String,Object> map);
}
