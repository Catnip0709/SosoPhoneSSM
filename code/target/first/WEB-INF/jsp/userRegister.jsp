<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>Soso用户注册（写数据库）</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>Soso用户注册</h1>
            </div>
        </div>
    </div>

    <form action="">
        手机号：<input type="text" name="cardNumber"><br>
        用户昵称：<input type="text" name="userName"><br>
        密码：<input type="text" name="passWord"><br>
        包类型：<input type="text" name="serPackage"><br>
        消费金额：<input type="text" name="consumAmount"><br>
        余额：<input type="text" name="money"><br>
        实际通话时间：<input type="text" name="realTalkTime"><br>
        实际短信条数：<input type="text" name="realSMSCount"><br>
        实际消费流量：<input type="text" name="realFlow"><br>
        <input type="button" value="添加" onclick="usrRegister()">
        <input type="button" value="返回" onclick="back()">
    </form>

    <script type="text/javascript">
        function usrRegister() {
            var form = document.forms[0];
            form.action = "<%=basePath %>soso/userRegister";
            form.method = "get";
            form.submit();
        }
        function back() {
            var form = document.forms[0];
            form.action = "<%=basePath %>";
            form.submit();
        }
    </script>
</div>