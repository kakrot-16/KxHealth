﻿<%@ page import="com.kx.pojo.Doctor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html >
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>康馨健康-预约挂号</title>
	<link rel="stylesheet" href="../static/css/portal.base.min.css" type="text/css"/>
	<link rel="stylesheet" href="../static/css/portal.basic.min.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../static/css/sweetalert.css"/>
    <script type="text/javascript" src="../static/js/sweetalert.min.js"></script>
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
    <link href="../static/css/zs-bootstrap.min.css" rel="stylesheet">
    <script src="../static/js/zs-bootstrap.min.js" type="text/javascript"></script>
    <script src="../static/js/zs-bootstrap-paginator.js" type="text/javascript"></script>
</head>
<script>
    $(function () {
        ajax();
        var d_type = "";
        $("#aa,#bb").click(function () {
            d_type1 = $(this).attr("value");
            $("#ul").attr("class",d_type1);
            ajax();
        });
        $("#all").click(function () {
            ajax();
        })
        function ajax(){
            <%--${doctor.d_hospital}--%>
            d_type = $("#ul").attr("class");
            $("#ul").attr("class","");
            var d_hospital = 1;
            var d_department1 = 1;
            $.ajax({
                url: "<%=request.getContextPath()%>/doctor/getDocByOption",
                data: {"d_hospital": d_hospital, "d_department1": d_department1,"d_type":d_type},
                type: "get",
                dataType: "json",
                success: function (data) {
                    var length = data.length;
                    $("#num").html(length);
                    var str = "";
                    for (var p in data) {//遍历json数组时，这么写p为索引，0,1
                        var g1 = data[p].d_gender;
                        var g2 = "";
                        if(g1 == 1){
                            g2 = "男";
                        }else{
                            g2 = "女";
                        }

                        str += "<div class=\"list\">\n" +
                            "        <div class=\"g-doctor-item2 g-clear to-margin\">\n" +
                            "            <div class=\"g-doc-baseinfo g-left\">\n" +
                            "                <a target=\"_blank\" \"\n" +
                            "                   onmousedown=\"return _smartlog(this,'DOCP_1')\" class=\"img\">\n" +
                            "                    <img src=\"../static/images/0.png\" class=\"img\" alt=\"卞华\" />\n" +
                            "                    <dt>\n" +
                            "                        <a  class=\"name js-doc\"\n" +
                            "                            target=\"_blank\" onmousedown=\"return _smartlog(this,'DOCN_1')\">\n" +
                            "                            <span style='font-size: 20px'>"+data[p].d_name+"</span>\n" +
                            "                        </a>&nbsp;&nbsp;\n" +
                            "                        "+data[p].d_type+"\n" +
                            "                    </dt>\n" +
                            "                    <dd>\n" +
                            "                        <span class=\"split\"></span>\n" +
                            "                        <span class=\"split\">  </span>\n" +
                            "                        <a \"\n" +
                            "                           onmousedown=\"return _smartlog(this,'DOCD')\"\n" +
                            "                           target=\"_blank\"\n" +
                            "                        >\n" +
                            "                            "+g2+"\n" +
                            "                        </a>\n" +
                            "                    </dd>\n" +
                            "                    </dl>\n" +
                            "            </div>\n" +
                            "            <div class=\"skill g-left\">\n" +
                            "                <strong>擅长：</strong>\n" +
                            "                "+data[p].d_intro+"\n" +
                            "            </div>\n" +
                            "            <div class=\"action g-left\">\n" +
                            "                <a target=\"_blank\" \"\n" +
                            "                   onmousedown=\"return _smartlog(this,'DOCP_1')\"\n" +
                            "                   class=\"gbn gbt-off\"\n" +
                            "                >挂号&nbsp;&nbsp;"+data[p].d_price+"元</a><br>\n" +
                            "\n" +
                            "                <a target=\"_blank\" \"\n" +
                            "                   onmousedown=\"return _smartlog(this,'DOCP_1')\"\n" +
                            "                   class=\"gbn gbt-off\"\n" +
                            "                >问诊&nbsp;&nbsp;"+data[p].d_consult+"元</a>\n" +
                            "            </div>\n" +
                            "        </div>\n" +
                            "    </div>";
                    }
                    $("#show").html(str);

                }
            });
        }
    });
</script>
<body class="g-1200px g-page-1200">
<div class="gh-nav">
	<div class="container g-clear">
	<div id="gc">
<div class="gp-search g-container" id="g-cfg" data-page="expert_in" data-module="search"  data-loadpop="remind">
    <div class="filter-tip">
        <div class="filter-condition" id="J_SelCondition">
        </div>
            <span class="result-num" style="font-size: 15px">找到<strong id="J_ResultNum"> <span id="num"></span> </strong>位医生</span>
    </div>
	<!-- .results -->
	<div class="results">
		<!-- .filter -->
		<div class="filter-new indept-filter J_Filter">
                <div class="condition-wrap in-condition-wrap">
                        <div class="condition J_dt">
                            <div class="condition-title"><a id="all">医生职称</a></div>
                            <div class="condition-content condition-collapse J_CT">
                                <ul id="ul" class="">
                                    <%--如：<a id="aa" href="" value="123">aa</a>
                                            $("#aa").attr("value")得到的值就是123--%>
                                    <li><a id="aa"  value="主任医师" >主任医师</a></li>
                                    <li><a id="bb"  value="副主任医师" >副主任医师</a></li>
                                </ul>
                            </div>
                        </div>
                </div>
                <div class="gfm-inline gfm-thin top">
                    <div class="gfm-field date-range J_DateRange" >
                        <label class="date-title">就诊日期：</label>
                        <span class="picker-mask g-datepicker">
                            <input type="date" name="ed" value="不限" class="gfm-input gfm-input-s J_Submit J_DateF" data-code="SXRQF" />
                        </span>
                        <span class="picker-mask g-datepicker">
                            &nbsp;-&nbsp;<input type="date" name="edt" value="不限" class="gfm-input gfm-input-s J_Submit J_DateT" data-code="SXRQT" />
                        </span>
                    </div>
                </div>
		</div>
		<!-- end of .filter -->
<!-- 开始 -->
<div id="show">
</div>
    <%--结束--%>
        <div class="container" style="margin: 0 auto;">
            <div style="margin-top: 100px;">
                <ul id="page"></ul>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                var currentPage = 1;
                var totalPages = 5;
                $("#page").bootstrapPaginator({
                    bootstrapMajorVersion:3, //对应的bootstrap版本
                    currentPage: currentPage, //当前页数
                    numberOfPages: 10, //每次显示页数
                    totalPages:totalPages, //总页数
                    shouldShowPage:true,//是否显示该按钮
                    useBootstrapTooltip:true,
                    //点击事件
                    onPageClicked: function (event, originalEvent, type, page) {
                    }
                });
            });
        </script>
</div>
</body>
</html>