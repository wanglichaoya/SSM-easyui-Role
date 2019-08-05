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
</head>
<body>
<%--<a href="WEB-INF/jsp/main.jsp">登录</a>--%>

<%--<a href="/user2/login.action">登录</a>--%>
<span style="color: red">${error}</span>
<form action="/loginController/login.action" method="post">
    <div class="login_div">
        <table>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="userName"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td><input type="submit" value="登录"></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>
    </div>

</form>
</body>
</html>
