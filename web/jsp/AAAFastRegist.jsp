<%@ page import="com.kx.pojo.Doctor" %>
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
<style>
    body{
        background-color: rgba(22, 69, 131, .04);
    }
    .g-container {
        padding: 20px;
        background-color: #164583;
        background-color: rgba(22, 69, 131, .04);
        border-radius: 8px;
        border: none;
        background-color: rgba(22, 69, 131, .04);
    }
    #ksorder_top {
        width: 1000px;
        margin: 0 auto;
    }
    a {
        cursor:pointer;
    }
    .a1,.a2{
        line-height: 30px;
        text-align: center;
        height: 30px;
        background: #eaeaea;
        color: #888;
    }
</style>
<script>
    $(function () {
        var d_type = "";
        var strTime = "";
        var endTime = "";
        var d_hospital = <%=request.getParameter("d_hospital")%>;
        var d_department2 = <%=request.getParameter("d_department2")%>;
        ajax();
        jianJie();
        function jianJie(){
            var d2_id = <%=request.getParameter("d_department2")%>;
            $.ajax({
                url:"<%=request.getContextPath()%>/department2/getInfo",
                data:{"d2_id":d2_id},
                type:"post",
                dataType:"text",
                success:function (data) {
                    $("#d2_info").html(data)
                }
            });
        }
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
            $.ajax({
                url: "<%=request.getContextPath()%>/doctor/getDocByOption",
                data: {"d_hospital": d_hospital, "d_department2": d_department2,"d_type":d_type},
                type: "post",
                dataType: "json",
                success: function (data) {
                    if(data == null || data== ''){
                        $("#show").html("<span style='color:red'>暂无医生信息</span>");
                    }else{
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
                                "                    <img src=\"../static/images/"+data[p].d_picture+"\" class=\"img\" />\n" +
                                "                    <dt>\n" +
                                "                        <a  class=\"name js-doc\"\n" +
                                "                            target=\"_blank\" onmousedown=\"return _smartlog(this,'DOCN_1')\">\n" +
                                "                            <span style='font-size: 20px'>&nbsp;&nbsp;&nbsp;"+data[p].d_name+"</span>\n" +
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
                                "                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+g2+"\n" +
                                "                        </a>\n" +
                                "                    </dd>\n" +
                                "                    </dl>\n" +
                                "            </div>\n" +
                                "            <div class=\"skill g-left\">\n" +
                                "                <strong>擅长：</strong>\n" +
                                "                "+data[p].d_intro+"\n" +
                                "            </div>\n" +
                                "            <div class=\"action g-left\">\n" +
                                "                <a  value="+data[p].d_id +
                                "      d1="+data[p].d_department1+"             class=\"a1\"\n" +
                                "                >挂号&nbsp;&nbsp;"+data[p].d_price+"元</a><br>\n" +
                                "\n" +
                                "                <a " +
                                "                   class=\"a2\"\n" +
                                "                >问诊&nbsp;&nbsp;"+data[p].d_consult+"元</a>\n" +
                                "            </div>\n" +
                                "        </div>\n" +
                                "    </div>";
                        }
                        $("#show").html(str);
                    }
                }
            });
        }
    });
</script>
<script type = "text/javascript">
    $(function () {
        $(document).on("click",".a1",function () {
            var d_id = $(this).attr("value");
            var d_department1 = $(this).attr("d1");
             swal(d_id+"     "+d_department1 )
            var str = "<%=request.getContextPath()%>/doctorWork/getInfo?d_id="+d_id+"&d_department1="+d_department1;
             window.location.href=str;
        })
    })
</script>
<a id="aa" href="" click="go()"></a>
<div id="ksorder_top">
    <div class="" style="width: 980px">
        <div  style="padding: 10px 0;font-size: 12px;width: auto">
            <a href="../index.jsp" style="color: #377bee;">首页&nbsp;&nbsp;</a>&gt;
            <span>&nbsp;&nbsp;科室定位</span>
        </div>
    </div>
</div>
<div class="gp-search g-container" id="g-cfg" data-page="expert_in" data-module="search"  data-loadpop="remind">
    <div class="filter-tip">
        <div class="filter-condition" id="J_SelCondition">
        </div>
        <span class="result-num" style="    font-size: 15px">找到<strong id="J_ResultNum"> <span id="num"></span> </strong>位在班医生</span>
    </div>
    <!-- .results -->
    <div class="results">
        <!-- .filter -->
        <div class="filter-new indept-filter J_Filter">
            <div class="condition-wrap in-condition-wrap">
                <div class="condition J_dt">
                    <div class="condition-title"><a id="all" style="cursor:pointer;margin: 4px 2px">医生职称</a></div>
                    <div class="condition-content condition-collapse J_CT">
                        <ul id="ul" class="">
                            <%--如：<a id="aa" href="" value="123">aa</a>
                                    $("#aa").attr("value")得到的值就是123--%>
                            <li><a id="aa"  value="主任医师" style="margin: 4px">主任医师</a></li>
                            <li><a id="bb"  value="副主任医师" style="margin: 4px">副主任医师</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="gfm-inline gfm-thin top">
                <div class="gfm-field date-range J_DateRange" >
                    <label class="date-title">科室简介：</label>
                    <span class="picker-mask g-datepicker" id="d2_info">

                        </span>
                </div>
            </div>
        </div>
        <!-- end of .filter -->
        <!-- 开始 -->
        <div id="show">
            </body>
</html>