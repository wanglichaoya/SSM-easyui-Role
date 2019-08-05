<%--
  Created by IntelliJ IDEA.
  User: cube
  Date: 2019/7/11
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Easyui案例</title>
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.7.0/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jquery-easyui-1.7.0/themes/icon.css">
    <script type="text/javascript" src="jquery-easyui-1.7.0/jquery.min.js"></script>
    <script type="text/javascript" src="jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
    <script type="text/javascript">


    </script>
</head>
<body>
<div style="margin:20px 0 10px 0;">
    <a href="javascript:void(0)" class="easyui-linkbutton" icon="icon-save">保存</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" icon="icon-cut">删除</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" icon="icon-add">新增</a>
    <a href="javascript:void(0)" class="easyui-linkbutton" icon="icon-edit">修改</a>
</div>

<table class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"
       data-options="singleSelect:true,collapsible:true,url:'/user2/queryUserInfo2.action',method:'get'">
    <thead>
    <tr>

        <th data-options="field:'userName',width:100">用户名</th>
        <th data-options="field:'userName',width:100">用户名</th>
        <th data-options="field:'userName',width:100">用户名</th>
        <th data-options="field:'userName',width:100">用户名</th>
    </tr>
    </thead>
</table>

</body>
</html>
