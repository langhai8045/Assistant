<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title><sitemesh:title/></title>
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/resources/css/style.css">
    <sitemesh:head/>
</head>
<body>
<!-- 头部导航栏 -->
<div class="header--fixed navbar navbar-inverse navbar-fixed-top" id="header">
    <!-- 定义个内部框架表现的基调,位置大小背景等 -->
    <div class="navbar-inner">
        <!-- 定义实现块的css,具体内容都包含在container中 -->
        <div class="container">
            <!-- 定义响应时用的按钮元素,界面大小改变时会用到 -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <!-- 定义品牌链接导航 -->
            <!-- 不知道为什么这么定义 -->
            <a class="brand" href="#">Assistant</a>
            <!-- 定义了个响应触发点 -->
            <div class="nav-collapse collapse">
                <!-- 定义导航列表 -->
                <ul class="nav">
                    <!-- 首页链接高亮 -->
                    <li class=""> <a href="./index.html">首页</a> </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <!-- 左侧导航栏 -->
        <div class="span3">
            <ul class="nav nav-list affix">
                <li class="active">
                    <a href="${ctx}/interface/list">接口管理</a>
                </li>
                <li>
                    <a href="#">路人甲</a>
                </li>
                <li>
                    <a href="#">路人甲</a>
                </li>
                <li>
                    <a href="#">路人甲</a>
                </li>

            </ul>
        </div>
        <div class="span9">
            <sitemesh:body/>
        </div>
    </div>
</div>


<script type="text/javascript" src="${ctx}/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/headroom.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/jQuery.headroom.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#header").headroom({
            "tolerance": 0,
            "offset": 150,
            "classes": {
                "initial": "animated",
                "pinned": "swingInX",
                "unpinned": "swingOutX"
            }
        });
    });
</script>
</body>
</html>