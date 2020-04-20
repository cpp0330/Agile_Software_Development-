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
<h4>请输入要删除事务的序号：</h4>
<script>
    $(function () {
        $("#submit").click(function () {
            var val = $("#id").val();
            var uri = "http://localhost:8080/api/tasks/" + val;
            $.ajax({
                url: uri,
                contentType: "application/json;charset=UTF-8",
                type: "delete", success: function (data) {
                    if(data==false){
                        location.href="http://localhost:8080/html/deleteFailed.jsp";
                    }
                    else {
                        location.href="http://localhost:8080/html/deletesuccess.jsp";
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
</body>
</html>
