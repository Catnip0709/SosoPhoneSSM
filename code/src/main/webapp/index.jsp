<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<% pageContext.setAttribute("path", request.getContextPath()); %>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-align: center;
            text-decoration: none;
            color: black;
            font-size: 18px;
        }
        h3 {
            width: 180px;
            height: 38px;
            margin: 20px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1> Soso移动应用大厅 </h1>
            </div>
        </div>
    </div>
</div>
<br><br>
<h3> <a href="${path }/soso/allUserWeb">用户登录</a> </h3>
<h3> <a href="${path }/soso/userRegisterWeb">用户注册</a> </h3>
<h3> <a href="${path }/paper/addPaper">使用嗖嗖</a> </h3>
<h3> <a href="${path }/paper/updatePaper">话费充值</a> </h3>
<h3> <a href="${path }/paper/allPaper">资费说明</a> </h3>
<h3> <a href="${path }/paper/updatePaper">退出系统</a> </h3>
</body>
</html>