<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试-张帅</title>
</head>
<body>
    <form action="<%=request.getContextPath()%>/order/add" method="post">
        订单编号<input type="text" name="or_id"><br><br>
        购买者编号<input type="text" name="or_buyer_id"><br><br>
        购买人姓名<input type="text" name="or_name"><br><br>
        医生id<input type="text" name="or_doc_id"><br><br>
        性别<input type="text" name="or_sex"><br><br>
        身份证<input type="text" name="or_id_card"><br><br>
        挂号费<input type="text" name="or_price"><br><br>
        支付账号<input type="text" name="or_payId"><br><br>
        <input type="submit" value="提交">
    </form>
    <form action="order/userQueryOrder" method="post">
        用户查询订单==》id:<input type="text" name="u_id"><br><br>
        <input type="submit" name="用户查询">
    </form>

    <form action="order/docQueryOrder" method="post">
        个人订单ID:<input type="text" name="d_id"><br><br>
        患者姓名:<input type="text" name="u_name"><br><br>
        开始时段:<input type="date" name="or_time1"><br><br>
        结束时段:<input type="date" name="or_time2"><br><br>
        <input type="submit" value="点击发射">
    </form>

    <form action="appointment/getDocList" method="post">
        医院ID:<input type="text" name="h_id"><br><br>
        科室ID:<input type="text" name="d1_id"><br><br>
        <input type="submit" value="查询">
    </form>
</body>
</html>
