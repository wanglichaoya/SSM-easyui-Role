<%--
  Created by IntelliJ IDEA.
  User: cube
  Date: 2019/7/4
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.7.0/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../jquery-easyui-1.7.0/themes/icon.css">
    <script type="text/javascript" src="../../jquery-easyui-1.7.0/jquery.min.js"></script>
    <script type="text/javascript" src="../../jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../../jquery-easyui-1.7.0/locale/easyui-lang-zh_CN.js"></script>
    <style>
        div.login_div {

            width: 400px;
            margin: 100px auto;
            padding: 1px;
            height: 40px;
            display: block;
        }
    </style>

    <script>
        $(function () {
            $('#username').textbox({
//                buttonText:'Search',
                iconCls: 'icon-man',
                width: '200px',
                iconAlign: 'right'
            });
            $('#password').textbox({
//                buttonText:'Search',
                iconCls: 'icon-lock',
                width: '200px',
                iconAlign: 'right'
            });

        })

        function checkAll() {
            var username = $('#username').val();
            var password = $('#password').val();
            if ("" == username || "" == password) {
                alert("您的输入有误！");
                return;
            }
        }
    </script>
</head>
<body>
<div class="login_div">
    <form action="/loginController/login.action" method="post">
        <table>


            <tr>
                <td>用户名</td>
                <td><input id="username" type="text" name="userName" style="width:300px">

                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input id="password" type="password" name="password" style="width:300px">

                </td>
            </tr>
            <tr>
                <td><input type="submit" value="登录" onclick="checkAll()"></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
