<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/21/021
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>showAll</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
<!--    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>-->
    <![endif]-->
    <style>
        #div1{
            margin-left: 450px;
            margin-top: 100px;
            width: 600px;
            height: 300px;
            border: gainsboro solid 2px;
        }
        #submit{
            margin-left: 250px;
        }
    </style>
</head>
<body>
<script src="/js/jquery-3.2.1.min.js"></script>
<script>

</script>
<div id="div1">
    <form id="form1"action="/api/tasks" method="post">
    <h3>新增待办事项：</h3>
    <div class="input-group input-group-sm">
        <span class="input-group-addon"  id="sizing-addon3">序号</span>
        <input type="text" class="form-control" name="id" aria-describedby="sizing-addon3">
    </div>

    <br/>
    <br/>
    <div class="input-group input-group-lg">
        <span class="input-group-addon" id="sizing-addon1">待办事项</span>
        <input type="text" class="form-control" name="content" aria-describedby="sizing-addon1">
    </div>
        <br/>
        <br/>
        <button id="submit"type="submit" class="btn btn-success">提交</button>
    </form>
    <div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="../js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../js/bootstrap.min.js"></script>
</body>
</html>
