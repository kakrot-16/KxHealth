<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html >
<html>
<head>
    <title>遍历页面-张帅-web-show</title>
</head>
<body>
    <script>
        alert(${result})
    </script>

    个人查看订单:
    <c:forEach items="${userQueryOrder }" var="order">
        订单ID:<span>${order.or_id }</span><br>
    </c:forEach>
    <br><br>
    医生查看订单:
    <c:forEach items="${docQueryOrder}" var="order">
        订单ID:<span>${order.or_id}</span><br><br>
    </c:forEach>
    所有医生：
    <c:forEach items="${doctorList}" var="doctor">
        医生ID：<span>${doctor.d_id}</span>
    </c:forEach>
</body>
</html>