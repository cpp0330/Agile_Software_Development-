<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/21/021
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除</title>
</head>
<script src="/js/jquery-3.2.1.min.js"></script>
<body>
<h4>请输入要查找的事务的序号：</h4>
<script>
    $(function () {
        $("#submit").click(function () {
            var val = $("#id").val();
            var uri = "http://localhost:8080/api/tasks/" + val;
            $.ajax({
                url: uri,
                contentType: "application/json;charset=UTF-8",
                type: "get", success: function (data) {
                    if(data==""){
                        $("h3").html("所查找的事务不存在");
                    }
                    else {
                        alert(data);
                        $("h3").html("序号："+data.id+"<br>"+"content:"+data.content+"<br>"+"创建时间"+data.createdTime);
                    }
                }
            });
        });
    });
</script>

<div class="input-group input-group-sm">
    <span class="input-group-addon"  id="sizing-addon3">序号</span>
    <input id="id"type="text" class="form-control" name="id" aria-describedby="sizing-addon3">
</div>
<button id="submit"type="button" class="btn btn-success">提交</button>
<h3 id="h3"></h3>
</body>
</html>
