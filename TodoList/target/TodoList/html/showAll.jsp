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
            margin-left: 550px;
        }
        #a1{
            margin-left: 100px;
        }
    </style>
</head>
<body>
<script src="/js/jquery-3.2.1.min.js"></script>
<script>
    $(function () {
        $.get("api/tasks",function (data) {
            if(data==null){
                $("#h3").html("还没有任何任务，请添加");
            }
            else {
                alert(data);
                $("a1").hide();
            }
        })

    });
</script>
<div id="div1">
<h3 id="h3"></h3><a id="a1" class="btn btn-primary btn-lg" href="#" role="button">添加</a>
    <div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery-3.2.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
