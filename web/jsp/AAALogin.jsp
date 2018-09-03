<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>康馨尚医登陆页</title>
</head>
<body>
<script src="../static/js/jquery-1.12.4.js" type="text/javascript" ></script>
<link rel="stylesheet" type="text/css" href="../static/css/register.css"/>
<script type="text/javascript" src="../static/js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="../static/css/sweetalert.css"/>
<div class='signup_container'>
    <h1 class='signup_title'>用户登陆</h1>
    <img src='../static/images/people.png' id='admin' />
    <div id="signup_forms" class="signup_forms clearfix">
            <div class="form_row first_row">
                <label >请输入用户名</label><!-- <div class='tip ok'></div> -->
                <input type="text" name="user[email]" placeholder="请输入用户名" id="signup_name" required="required">
            </div>
            <div class="form_row">
                <label for="signup_password">请输入密码</label> <!-- <div class='tip ok'></div> -->
                <input type="password" name="user[password]" placeholder="请输入密码" id="signup_password" required="required">
            </div>
    </div>
    <div class="login-btn-set" id="btn">
        <input type="button" class="login-btn"/>
    </div>
    <p class='copyright'>康馨尚医版权所有</p>
</div>

</body>

<script type="text/javascript">
    $(function () {

        var name = "";
        var pass = "";
       $("#btn").click(function () {
            name = $("#signup_name").val();
            pass = $("#signup_password").val();
            if (name=="" || name == null || pass=="" || pass==null) {
                swal("账号或密码不能为空")
            }else{
                $.ajax({
                    url:"<%=request.getContextPath()%>/docUser/login.do",
                    data:{"d_code":name,"d_pass":pass},
                    type:"post",
                    dataType: "json",
                    success:function (data) {
                        if(data.u_name == "N"){
                            swal("账号或密码错误，请重新输入...")
                        }else{
                            swal(data.u_name+"登陆成功")
                        }
                    }

                })
            }
       }) ;
    });
</script>
</body>
</html>
