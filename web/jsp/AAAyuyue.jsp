<%@ page import="com.kx.pojo.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>预约挂号</title>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <link rel="stylesheet" type="text/css" href="../static/css/sweetalert.css"/>
    <script type="text/javascript" src="../static/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../static/css/zs-bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../static/css/zs-index.css">
    <link href="../static/css/jquery.searchableselect.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>


</head>
<body>
<style>
    select,input{
        border-radius: 5px;
        width: 70%;
        height: 45px;
    }
</style>
<%
    User user = (User) request.getAttribute("user");
    if (user == null){
%>
<script>
    // window.location.replace("zhuanjia.jsp");//登陆页面还没写
</script>
<%
    }
%>
<a class="a globalLoginBtn" style="width: 10%">快速预约</a>
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true" style="display: none;">
    <div style="display:table; width:100%; height:100%;">
        <div style="vertical-align:middle; display:table-cell;">
            <div class="modal-dialog modal-sm" style="width:540px;">
                <div class="modal-content" style="border: none;">
                    <div class="col-right" style="width: 100%">
                        <div class="modal-header">
                            <button type="button" id="login_close" class="close" data-dismiss="modal"><span
                                    aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="loginModalLabel" style="font-size: 18px;">预约</h4>
                        </div>
                        <div class="modal-body">
                            <section class="box-login v5-input-txt" id="box-login">
                                <form id="login_form"  autocomplete="off" >

                                    <ul style="margin: 0 auto">
                                        <br>
                                        <span style="font-size: 15px">选择医院:</span>
                                        <select style="font-size: 13px" id="se1">
                                            <option value="-1">请选择</option>
                                        </select><br><br>

                                        <span style="font-size: 15px">选择科室: </span>
                                        <select style="font-size: 13px" id="se2">
                                        </select><br><br>
                                        <span style="font-size: 15px">选择医生: </span>
                                        <select style="font-size: 13px" id="se3">
                                        </select><br><br>
                                        <span style="font-size: 15px">预约时间:</span>
                                        <input type="date" name="or_data_time" id="time" style="font-size: 15px;">
                                    </ul>
                                </form>
                                <br>
                                <div class="login-box marginB10">
                                    <button id="login_btn" type="button" class="btn btn-micv5 btn-block globalLogin">
                                        立即预约挂号
                                    </button>
                                </div>

                            </section>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
            <script type="text/javascript" src="../static/js/zs-bootstrap.min.js"></script>
            <script type="text/javascript" src="../static/js/zs-common.js"></script>
            <script type="text/javascript" src="../static/js/zs-login.js"></script>
            <div style="text-align:center;"></div>
        </div>
    </div>
</div>
</body>
<script>
    $(function () {
        ajax();
        var se1 = null;
        var se2 = null;
        var se3 = null;
        $("#se1").change(function () {
            $("#se2").html("");
            $("#se3").html("");
            ajax2();

        });
        $("#se2").change(function () {
            $("#se3").html("");
            ajax3();
        });
        //合集
        function ajax() {
            //一级
            $.ajax({
                url:"<%=request.getContextPath()%>/hospital/getAll" ,
                dataType:"text",
                type:"get",
                success:function (data) {
                    $("#se1").html("");
                    var xqo = eval('(' + data + ')');
                    var str = "";
                    for (var p in xqo) {//遍历json数组时，这么写p为索引，0,1
                        str += "<option value=" + xqo[p].h_id + ">" + xqo[p].h_name + "</option>";
                    }
                    $("#se1").html(str);
                    se1 = $("#se1").val();
                    if (se1 != null || se1 != '') {
                        //二级
                        $.ajax({
                            url: "<%=request.getContextPath()%>/department1/getAll",
                            data: {"id": se1},
                            type: "get",
                            dataType: "json",
                            success: function (data) {
                                $("#se2").html("");
                                var str = "";
                                for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                                    str += "<option value=" + data[p].d1_id + ">" + data[p].d1_name + "</option>";
                                }
                                $("#se2").html(str);
                                se2 = $("#se2").val();
                                if (se2 != null || se2 != '') {
                                    //三级
                                    $.ajax({
                                        url: "<%=request.getContextPath()%>/doctor/getDocByOption",
                                        data: {"d_hospital": se1, "d_department1": se2},
                                        type: "get",
                                        dataType: "json",
                                        success: function (data) {
                                            $("#se3").html("");
                                            var str = "";
                                            for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                                                str += "<option value=" + data[p].d_id + ">" + data[p].d_name +"--"+data[p].d_type+"--"+ "</option><span>详情</span>";
                                            }
                                            $("#se3").html(str);
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
                });

        }
        var ajax2 = function () {
            //二级选择
            se1 = $("#se1").val();
            if(se1 != null || se1 != '') {
                $.ajax({
                    url: "<%=request.getContextPath()%>/department1/getAll",
                    data: {"id": se1},
                    type: "get",
                    dataType: "json",
                    success: function (data) {
                        $("#se2").html("");
                        var str = "";
                        for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                            str += "<option value=" + data[p].d1_id + ">" + data[p].d1_name + "</option>";
                        }
                        $("#se2").html(str);
                        //三级选择
                        se2 = $("#se2").val();
                        if(se2 != null || se2 != ''){
                            $.ajax({
                                url:"<%=request.getContextPath()%>/doctor/getDocByOption" ,
                                data:{"d_hospital":se1,"d_department1":se2},
                                type:"get",
                                dataType:"json",
                                success:function (data) {
                                    $("#se3").html("");
                                    var str = "";
                                    for(var p in data){//遍历json数组时，这么写p为索引，0,1
                                        str += "<option value="+data[p].d_id+">"+ data[p].d_name +"--"+data[p].d_type+"--"+ "</option><span>详情</span>";
                                    }
                                    $("#se3").html(str);
                                }
                            });
                        }
                    }
                });
            }
        }
        var ajax3 = function () {
            //三级选择
            se2 = $("#se2").val();
            if(se2 != null || se2 != ''){
                $.ajax({
                    url:"<%=request.getContextPath()%>/doctor/getDocByOption" ,
                    data:{"d_hospital":se1,"d_department1":se2},
                    type:"get",
                    dataType:"json",
                    success:function (data) {
                        $("#se3").html("");
                        var str = "";
                        for(var p in data){//遍历json数组时，这么写p为索引，0,1
                            str += "<option value="+data[p].d_id+">"+ data[p].d_name +"--"+data[p].d_type+"--"+ "</option><span>详情</span>";
                        }
                        $("#se3").html(str);
                    }
                });
            }
        }

        //点击提交
        $("#login_btn").click(function () {
            se1 = $("#se1").val();
            se2 = $("#se2").val();
            se3 = $("#se3").val();
            var time = $("#time").val();
            if((se1==null||se1=='' )|| (se2==null||se2=='') || (se3 == null || se3 == '') ||
                (time==null || time == '')){
                swal("请选择所有选项")
            }else{
                <%--var ap_user_id = <%=user.getU_id()%>;//用户id--%>
                var ap_user_id = 1;//用户id
                var ap_doc_id = 1;//医生id
                $.ajax({
                    url:"<%=request.getContextPath()%>/appointment/add",
                    // data:"{'ap_user_id':"+ap_user_id+",'ap_doc_id':"+ap_doc_id+"}",
                    data:"ap_user_id="+ap_user_id+"&ap_doc_id="+ap_doc_id,
                    type:"post",
                    dataType:"text",
                    success:function (data) {
                        if(data > 0){
                            swal({
                                title: "预约成功,医生有号时我们会短信通知您",
                                text: "要跳转回首页吗？",
                                type: "success",
                                showCancelButton: true,
                                closeOnConfirm: false,
                                confirmButtonText: "是的，我要回首页",
                                confirmButtonColor: "#1fd783"
                            }, function() {
                                window.location.replace("../index.jsp");
                            });
                        }else{
                            swal("预约失败")
                        }
                    }
                });
            }
        });
    });
</script>
</html>