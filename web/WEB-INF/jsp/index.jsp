<%--
  Created by IntelliJ IDEA.
  User: cube
  Date: 2019/7/4
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户列表</title>
    <link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.7.0/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.7.0/themes/icon.css">
    <script type="text/javascript" src="../../jquery-easyui-1.7.0/jquery.min.js"></script>
    <script type="text/javascript" src="../../jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../../jquery-easyui-1.7.0/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="../../js/easyui-menu-tree/easyui-menu-tree.js"></script>
    <style>
        .head-info {
            margin: 5px;
            float: right;
        }

        .logo-info {
            display: inline-block;
            margin: 5px;
            color: blue;
        }
    </style>
</head>

<body class="easyui-layout">
<div data-options="region:'north',title:'',split:false" style="height:35px;">
    <span class="logo-info">权限管理系统</span>
    <div class="head-info">
        欢迎您，<span style="color: red">${userRoleName}</span> | <span style="color: red">${success}</span> <span
            style="text-align: right"> <a href="/user2/logOut.action">退出</a></span>
    </div>
</div>
<div data-options="region:'south',title:'',split:false" style="height:30px;">
    <span style="margin: 5px;">版权所有，翻版必究！Copyright © 2004 - 2019</span>
</div>
<div data-options="region:'west',title:'菜单',split:true" style="width:150px;">
    <div id="tree">
    </div>
</div>
<div data-options="region:'center',title:''" style="padding:5px;background:#eee;">

    <div id="tabs" class="easyui-tabs" style="width:100%;height:550px;">
    </div>
</div>


</body>
</html>
