<%--
  Created by IntelliJ IDEA.
  User: 司玉泉
  
  Date: 2021/4/4
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
<%--    <base href="<%=basePath%>"/>--%>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改学生</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改联系人</h3>
    <form action="${pageContext.request.contextPath}/UserUpdateServlet" method="post">
        <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" class="form-control" id="name" name="userName" value="${user.userName}" readonly="readonly" placeholder="请输入姓名" />
        </div>

        <div class="form-group">
            <label>性别：</label>
            <c:if test="${user.sex == '男'}">
                <input type="radio" name="sex" value="男"  checked/>男
                <input type="radio" name="sex" value="女"  />女
            </c:if>
            <c:if test="${user.sex == '女'}">
                <input type="radio" name="sex" value="男"  />男
                <input type="radio" name="sex" value="女"  checked/>女
            </c:if>

        </div>

        <div class="form-group">
            <label for="age">年龄：</label>
            <input type="text" class="form-control" id="age" value="${user.age}" name="age" placeholder="请输入年龄" />
        </div>

        <div class="form-group">
            <%--@declare id="address"--%><label for="address">籍贯：</label>
            <select name="address" class="form-control" >
                <option value="广东">广东</option>
                <option value="广西">广西</option>
                <option value="湖南">湖南</option>
                <option value="湖南">安徽省毫州</option>
                <option value="湖南">江苏省沛县</option>
                <option value="湖南">上海市幼儿园</option>
            </select>
        </div>

        <div class="form-group">
            <%--@declare id="qq"--%><label for="qq">QQ：</label>
            <input type="text" class="form-control" name="qq" value="${user.qq}" placeholder="请输入QQ号码"/>
        </div>

        <div class="form-group">
            <%--@declare id="email"--%><label for="email">Email：</label>
            <input type="text" class="form-control" name="email" value="${user.email}" placeholder="请输入邮箱地址"/>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交" />
            <input class="btn btn-default" type="reset" value="重置" />
<%--            <input class="btn btn-default" type="button" value="返回" />--%>

        </div>
    </form>
</div>
</body>
</html>
