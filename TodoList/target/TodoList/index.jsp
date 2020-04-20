<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>index</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
<!--    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>-->
    <![endif]-->
    <style>
        #table{
            margin-left: 200px;
            margin-top: 100px;
        }
        .jumbotron{
            background: white;
        }
    </style>
</head>
<script src="js/jquery-3.2.1.min.js"></script>
<script>
</script>
<body>
<table id="table" width="100%">
    <tr>
        <td ><div class="jumbotron">
            <h3>Show all your Todo List!</h3>
            <p>...</p>
            <p><a id="showAll" class="btn btn-primary btn-lg" href="/api/tasks" role="button">Show now!</a></p>
        </div>
        </td>
        <td ><div class="jumbotron">
            <h3>Create a new Todo</h3>
            <p>...</p>
            <p><a class="btn btn-primary btn-lg" href="/html/add.jsp" role="button">Create now!</a></p>
        </div>
        </td>
    </tr>
    <tr>
        <td ><div class="jumbotron">
            <h3>Serch one by ID</h3>
            <p>...</p>
            <p><a class="btn btn-primary btn-lg" href="/html/search.jsp" role="button">Search now!</a></p>
        </div>
        </td>
        <td ><div class="jumbotron">
            <h3>Delete one of your Todo</h3>
            <p>...</p>
            <p><a class="btn btn-primary btn-lg" href="/html/delete.jsp" role="button">Delete now!</a></p>
        </div>
        </td>
    </tr>
</table>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.2.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>