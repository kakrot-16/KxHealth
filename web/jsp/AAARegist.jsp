﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html >
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>网上医院预约挂号-康馨(挂号网)</title>
	<link rel="stylesheet" href="../static/css/portal.base.min.css" type="text/css"/>
	<link rel="stylesheet" href="../static/css/fastorder.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../static/css/sweetalert.css"/>
    <script type="text/javascript" src="../static/js/sweetalert.min.js"></script>
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
</head>
<script>
    $(function () {
        ajax();
        var se1 = null;
        var se2 = null;
        var se3 = null;
        var se4 = null;
        $("#se1").change(function () {
            $("#se2").html("");
            $("#se3").html("");
            $("#se4").html("");
            ajax2();

        });
        $("#se2").change(function () {
            $("#se3").html("");
            $("#se4").html("");
            ajax3();
        });
        $("#se3").change(function () {
            $("#se4").html("");
            ajax4();
        });
        //合集
        function ajax() {
            //一级医院
            $.ajax({
                url:"<%=request.getContextPath()%>/hospital/getAll" ,
                dataType:"text",
                type:"post",
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
                        //二级科室
                        $.ajax({
                            url: "<%=request.getContextPath()%>/department1/getAll",
                            data: {"id": se1},
                            type: "post",
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
                                    //三级门诊
                                    $.ajax({
                                        url: "<%=request.getContextPath()%>/department2/getAll",
                                        data: {"id": se2},
                                        type: "post",
                                        dataType: "json",
                                        success: function (data) {
                                            $("#se3").html("");
                                            var str = "";
                                            for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                                                str += "<option value=" + data[p].d2_id + ">" + data[p].d2_name + "</option>";
                                            }
                                            $("#se3").html(str);
                                            se3 = $("#se3").val();
                                            if (se3 != null || se3 != '') {
                                                //四级医生
                                                $.ajax({
                                                    url: "<%=request.getContextPath()%>/doctor/getDocByOption",
                                                    data: {"d_hospital": se1, "d_department1": se2,"d_department2":se3},
                                                    type: "post",
                                                    dataType: "json",
                                                    success: function (data) {
                                                        $("#se4").html("");
                                                        var str = "";
                                                        for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                                                            str += "<option value=" + data[p].d_id + ">" + data[p].d_name +"--"+data[p].d_type+"--"+ "</option>";
                                                        }
                                                        $("#se4").html(str);
                                                    }
                                                });
                                            }
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            });

        }
        function ajax2(){
            se1 = $("#se1").val();
            if (se1 != null || se1 != '') {
                //二级科室
                $.ajax({
                    url: "<%=request.getContextPath()%>/department1/getAll",
                    data: {"id": se1},
                    type: "post",
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
                            //三级门诊
                            $.ajax({
                                url: "<%=request.getContextPath()%>/department2/getAll",
                                data: {"id": se2},
                                type: "post",
                                dataType: "json",
                                success: function (data) {
                                    $("#se3").html("");
                                    var str = "";
                                    for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                                        str += "<option value=" + data[p].d2_id + ">" + data[p].d2_name + "</option>";
                                    }
                                    $("#se3").html(str);
                                    se3 = $("#se3").val();
                                    if (se3 != null || se3 != '') {
                                        //四级医生
                                        $.ajax({
                                            url: "<%=request.getContextPath()%>/doctor/getDocByOption",
                                            data: {"d_hospital": se1, "d_department1": se2,"d_department2":se3},
                                            type: "post",
                                            dataType: "json",
                                            success: function (data) {
                                                $("#se4").html("");
                                                var str = "";
                                                for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                                                    str += "<option value=" + data[p].d_id + ">" + data[p].d_name +"--"+data[p].d_type+"--"+ "</option>";
                                                }
                                                $("#se4").html(str);
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
        function ajax3() {
            se2 = $("#se2").val();
            if (se2 != null || se2 != '') {
                //三级门诊
                $.ajax({
                    url: "<%=request.getContextPath()%>/department2/getAll",
                    data: {"id": se2},
                    type: "post",
                    dataType: "json",
                    success: function (data) {
                        $("#se3").html("");
                        var str = "";
                        for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                            str += "<option value=" + data[p].d2_id + ">" + data[p].d2_name + "</option>";
                        }
                        $("#se3").html(str);
                        se3 = $("#se3").val();
                        if (se3 != null || se3 != '') {
                            //四级医生
                            $.ajax({
                                url: "<%=request.getContextPath()%>/doctor/getDocByOption",
                                data: {"d_hospital": se1, "d_department1": se2, "d_department2": se3},
                                type: "post",
                                dataType: "json",
                                success: function (data) {
                                    $("#se4").html("");
                                    var str = "";
                                    for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                                        str += "<option value=" + data[p].d_id + ">" + data[p].d_name + "--" + data[p].d_type + "--" + "</option>";
                                    }
                                    $("#se4").html(str);
                                }
                            });
                        }
                    }
                });
            }
        }
        function ajax4(){
            se3 = $("#se3").val();
            if (se3 != null || se3 != '') {
                //四级医生
                $.ajax({
                    url: "<%=request.getContextPath()%>/doctor/getDocByOption",
                    data: {"d_hospital": se1, "d_department1": se2, "d_department2": se3},
                    type: "post",
                    dataType: "json",
                    success: function (data) {
                        $("#se4").html("");
                        var str = "";
                        for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                            str += "<option value=" + data[p].d_id + ">" + data[p].d_name + "--" + data[p].d_type + "--" + "</option>";
                        }
                        $("#se4").html(str);
                    }
                });
            }
        }

        //时间change 事件
        $("#time").change(function () {
           swal($(this).val() > new Date().toLocaleDateString())
            console.log($(this).val())
            console.log(new Date())
            console.log($(this).val() > new Date())
        });

        //点击提交
        $("#btn").click(function () {
            se1 = $("#se1").val();
            se2 = $("#se2").val();
            se3 = $("#se3").val();
            se4 = $("#se4").val();
            var time = $("#time").val();
                if ((se1 == null || se1 == '') || (se2 == null || se2 == '') || (se3 == null || se3 == '') ||
                    (time == null || time == '') || (se4 == null || se4 == '')) {
                    swal("请选择所有选项")
                } else {
                    <%--var ap_user_id = <%=user.getU_id()%>;//用户id--%>
                    var ap_user_id = <%%>;//用户id
                    var ap_doc_id = 1;//医生id
                    var now = new Date();
                    var nt = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+now.getDate();
                    var time1 = new Date(time.replace("-", "/").replace("-", "/"));
                    var time2 = new Date(nt.replace("-", "/").replace("-", "/"));
                    if (time2 - time1 >= 0) {
                        swal("请选择正确的预约时间");
                    } else {
                        $.ajax({
                            url: "<%=request.getContextPath()%>/appointment/add",
                            // data:"{'ap_user_id':"+ap_user_id+",'ap_doc_id':"+ap_doc_id+"}",
                            data: "ap_user_id=" + ap_user_id + "&ap_doc_id=" + ap_doc_id,
                            type: "post",
                            dataType: "text",
                            success: function (data) {
                                if (data > 0 && data != 233) {
                                    swal({
                                        title: "预约成功,医生有号我们将短信通知您",
                                        text: "要跳转回首页吗？",
                                        type: "success",
                                        showCancelButton: true,
                                        closeOnConfirm: false,
                                        confirmButtonText: "是的，我要回首页",
                                        confirmButtonColor: "#1fd783"
                                    }, function () {
                                        window.location.replace("../index.jsp");
                                    });
                                } else if (data == 233) {
                                    swal({
                                        title: "预约超限,预约次数不可超出三次。",
                                        text: "要跳转回首页吗？",
                                        type: "error",
                                        showCancelButton: true,
                                        closeOnConfirm: false,
                                        confirmButtonText: "是的，我要回首页",
                                        confirmButtonColor: "#1fd783"
                                    }, function () {
                                        window.location.replace("../index.jsp");
                                    });
                                }
                            }
                        });
                    }
                }
        });
    });
</script>
<body class="g-1200px g-page-1200">
<div class="gp-fastorder" id="g-cfg">
	 <div id="g-breadcrumb">
	    <a href="../index.jsp">首页</a>&gt;
        <span>快速挂号</span>
	 </div>
	<div class="g-container">
		<div class="fastorder-wrap">
			<div class="fastorder-left">
				<div class="hd">
					<h3 class="hd-title">快速挂号</h3>
					<p class="hd-sub-title">帮助普通患者快速找到选定条件下可预约的专家</p>
					<p class="hd-tip">
						合作医院全国共计999家
					</p>
				</div>
				<div class="bd">
					<div class="bd-item bd-fast-filter">
						<p class="title">快速筛选</p>
						<p>根据医院、科室、医生快速筛选对应班次</p>
					</div>
					<div class="bd-item bd-fit-people">
						<p class="title">适用人群</p>
						<p>已确定具体病症，希望尽快就医确诊的普通患者</p>
					</div>
				</div>
				<div class="qrcode">
					<p class="title">网页挂号10秒搞定！</p>
					<p>立即扫描下载康馨APP或</p>
					<p>关注微信公众号，让看病变得更简单！</p>
					<ul class="qrcode-list">
						<li>
							<p><img src="../static/img/ksyy.png" /></p>
							<p>康馨App</p>
						</li>
						<li>
							<p><img src="../static/img/wx.png" /></p>
							<p>康馨公众号</p>
						</li>
					</ul>
				</div>
				<div class="download">
					<a class="dl-link i-download" href="" target="_blank" rel="nofollow" monitor="appdown_ios,resource,picadv"></a>
					<a class="dl-link a-download" href="" target="_blank" rel="nofollow" monitor="appdown_android,resource,picadv"></a>
				</div>
				<div class="fastorder-ads"><!-- 不能删 -->
			</div>
			</div>
			<div class="fastorder-main">
				<div class="tips">温馨提醒：费用由医院自行设定，平台不收取任何额外费用</div>
	     		<div class="g-fastorder-box">
					<div class="row g-clear">
						<label>医院：</label>
						<select class="province js-province"  id="se1">
							<option value="-1">请选择...</option>
						</select>
					</div>
					<div class="row g-clear">
						<label>科室</label>
						<select class="city js-city disabled"   id="se2">

						</select>
					</div>
					<div class="row g-clear">
						<label>门诊</label>
						<select class="city js-city disabled"   id="se3">

						</select>
					</div>
					<div class="row g-clear">
						<label>医生：</label>
						<select class="js-hospital disabled"  id="se4">

						</select>
					</div>
					<div class="row g-clear">
						<label>时间：</label>
						<input  type="date" style="width: 290px;height: 38px;" id="time">
					</div>
					<div class="gfm-actions">
						<a id="btn" class="gbn gbt-green js-btn" style=" cursor:pointer;">预约挂号</a>
					</div>
					<div class="footer-msg"></div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
		<div id="gf">
			<div class="g-container">
					<div class="g-footer g-clear">
						<a class="logo g-left"  onmousedown="return _smartlog(this,'BTM')"></a>
					    <div class="links g-left">
					    	<dl class="one g-clear">
					    		<dt>关于微医</dt>
					    		<dd><a  rel="nofollow" onmousedown="return _smartlog(this,'BTM')">关于我们</a></dd>
					    		<dd><a  onmousedown="return _smartlog(this,'BTM')">友情链接</a></dd>
					    		<dd><a  rel="nofollow" onmousedown="return _smartlog(this,'BTM')">加入微医</a></dd>
					    		<dd><a  rel="nofollow" onmousedown="return _smartlog(this,'BTM')">版权声明</a></dd>
					    		<dd><a rel="nofollow" onmousedown="return _smartlog(this,'BTM')">联系我们</a></dd>
					    		<dd class="last"><a  rel="nofollow" target="_blank" onmousedown="return _smartlog(this,'BTM')">新浪微博</a></dd>
                                <dd><a  onmousedown="return _smartlog(this,'BTM')">网站地图</a></dd>
								<dd><a  onmousedown="return _smartlog(this,'BTM')">知识库</a></dd>
					    	</dl>
					    	<dl class="two">
					    		<dd class="partner"><a  onmousedown="return _smartlog(this,'BTM')">医院合作</a></dd>
					    		<dd class="help"><a  rel="nofollow" onmousedown="return _smartlog(this,'BTM')">客服中心</a></dd>
					    	</dl>
					    	<div class="clear"></div>
					    </div>
						<div class="code g-left">
							<a class="nihe"  rel="nofollow" target="_blank" >中国健康教育中心<br/>卫生部新闻宣传中心</a>
							<a class="cha" rel="nofollow" target="_blank">中国医院协会<br/>门急诊管理专业委员会</a>
							<a class="fudanmed" rel="nofollow" target="_blank">上海复旦医院管理公司</a>
							<a class="cfnews"  rel="nofollow" target="_blank" >中国家庭报<br/>卫计委人口文化发展中心</a>
							<div class="clear"></div>
						</div>
						<div class="internation g-right">
							<a  rel="nofollow" target="_blank"><i></i>
								<h3>国际互联网医疗大会</h3>
								<p>International Conference</p>
								<p>on Internet Healthcare</p>
							</a>
						</div>
					</div>
						<p class="copyright">
							版权所有：郑州广发科技有限公司&nbsp;&nbsp;&nbsp;
							<a  rel="nofollow">豫B2-20130007</a>&nbsp;&nbsp;
							<a  rel="nofollow">(豫)-经营性-2014-0022</a>&nbsp;&nbsp;
							<a class="alliance"  target="_blank" rel="nofollow"></a>
							<a class="alliance attestation"  rel="nofollow"></a>
							<a class="record"  rel="nofollow" target="_blank"></a>

						</p>
					<div style="width:300px;margin:0 auto; padding:20px 0;">
						<a target="_blank"   rel="nofollow" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="../static/img/ghs.png" style="float:left;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">浙公网安备 33010902000463号</p></a>
					</div>
			</div>
		</div> 
</body>
</html>