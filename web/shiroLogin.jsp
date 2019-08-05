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

<form action="/user2/shiroLogin.action" method="post">
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
</form>

</body>
</html>
