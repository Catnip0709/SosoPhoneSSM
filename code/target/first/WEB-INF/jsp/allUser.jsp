<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  String appPath = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + appPath + "/";
%>
<head>
    <title>Soso用户列表（读数据库）</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>-->

<body xmlns:c="http://java.sun.com/jsp/jstl/core">
<div class="container">

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="<%=basePath %>">返回</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>手机号</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>服务包</th>
                    <th>消费金额</th>
                    <th>余额</th>
                    <th>实际通话</th>
                    <th>实际短信</th>
                    <th>实际流量</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${user.cardNumber}</td>
                        <td>${user.userName}</td>
                        <td>${user.passWord}</td>
                        <td>${user.serPackage}</td>
                        <td>${user.consumAmount}</td>
                        <td>${user.money}</td>
                        <td>${user.realTalkTime}</td>
                        <td>${user.realSMSCount}</td>
                        <td>${user.realFlow}</td>
<%--                        <td>111</td>--%>
<%--                        <td>222</td>--%>
<%--                        <td>3</td>--%>
<%--                        <td>4</td>--%>
<%--                        <td>5</td>--%>
<%--                        <td>6</td>--%>
<%--                        <td>7</td>--%>
<%--                        <td>8</td>--%>
<%--                        <td>9</td>--%>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>