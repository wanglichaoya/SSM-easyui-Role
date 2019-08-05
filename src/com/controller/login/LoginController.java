package com.controller.login;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.po.TreeNode;
import com.po.UserInfo;
import com.service.ILoginService;
import com.service.IResourceTreeService;
import com.service.IUserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("/loginController")
@Controller
public class LoginController {

    @Resource
    private ILoginService loginService;
    @Resource
    private IUserInfoService iuserInfoService;
    @Resource
    private IResourceTreeService iResourceTreeService;
    @Autowired
    private HttpSession session;

    @RequestMapping("/login")
    public String login(UserInfo userInfo, Model model) {

        UserInfo userInfo1 = loginService.login(userInfo);
        if (null != userInfo1) {
            UserInfo userRole = loginService.getUserRole(userInfo1);
            model.addAttribute("success", userInfo.getUserName());
            session.setAttribute("NowUserName", userInfo.getUserName());
            model.addAttribute("userRoleName", userRole.getRoleName());
            return "index";
        } else {
            model.addAttribute("error", "用户名或密码错误!");
            //return "login_error";
            return "login";
        }
       /* if ("" != userName && "" != password) {
            model.addAttribute("success", userName);
            return "layout";
        } else {
            model.addAttribute("error", "用户名或密码错误!");
            return "login_error";
        }*/

    }

    //从session中获取用户名，然后根据用户名查找相应的资源
    @RequestMapping("/loadTreeByRole")
    @ResponseBody
    public JSONArray loadTreeByRole() {
        String username = session.getAttribute("NowUserName").toString();

        //List<TreeNode> treeNodesList = iResourceTreeService.loadTreeByRoleParent();
        List<TreeNode> treeNodesList = loginService.selectResByName(username);
        List<TreeNode> treeNodesListParent = new ArrayList<TreeNode>();
        for (int i = 0; i < treeNodesList.size(); i++) {
            TreeNode treeNodeParent = new TreeNode();
            String parentName = treeNodesList.get(i).getText();
            String parentState = treeNodesList.get(i).getState();
            System.out.printf("父类的url是： " + treeNodesList.get(i).getUrl());
            treeNodeParent.setText(parentName);
            treeNodeParent.setState(parentState);

            treeNodesListParent.add(treeNodeParent);

            //根据父类名称查询子类
            Map<String, Object> objectMap = new HashMap<String, Object>();
            objectMap.put("text", parentName);
            objectMap.put("username", username);
            //List<TreeNode> treeNodesListChildList = iResourceTreeService.loadTreeByRoleChild(objectMap);
            List<TreeNode> treeNodesListChildList = loginService.loadTreeByRoleChild(objectMap);
            List<TreeNode> treeNodeListAttribute = new ArrayList<TreeNode>();
            for (TreeNode treeNodeChilds : treeNodesListChildList) {
                TreeNode treeNodeChild = new TreeNode();
                treeNodeChild.setText(treeNodeChilds.getText());
                treeNodeChild.setState(treeNodeChilds.getState());
                Map<String, Object> urlMap = new HashMap<String, Object>();
                urlMap.put("url", treeNodeChilds.getUrl());
                treeNodeChild.setAttributes(urlMap);
                treeNodeListAttribute.add(treeNodeChild);
            }

            treeNodeParent.setChildren(treeNodeListAttribute);

        }
        JSONObject jsonObject = new JSONObject();
        JSONArray jsonArray = (JSONArray) JSONArray.toJSON(treeNodesListParent);
        System.out.printf("json串为： " + jsonArray.toJSONString());
        return jsonArray;
    }


}
