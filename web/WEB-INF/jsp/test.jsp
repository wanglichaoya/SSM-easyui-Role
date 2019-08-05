<%--
  Created by IntelliJ IDEA.
  User: cube
  Date: 2019/7/4
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
    <script src="../../js/jquery-3.3.1.js"></script>
    <script type="text/javascript">
        $("#test").click(function () {
            $.ajax({
                type: 'post',
                url: '${pageContext.request.contextPath}/user2/queryUserInfo2.action',
                //这里设置contentType为不需要设置，默认就好
                //数据格式为key-value
                data: 'username=zcj&password=admin&repeatpwd=admin',
                success: function (result) {
                    alert(result.username);
                },
                error: function (result) {

                }
            });
        });

    </script>
</head>
<body>

<input type="button" id="test" value="测试">


</body>
</html>
