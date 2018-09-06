<%@ page import="com.kx.pojo.Hospital" %>
<%@ page import="com.kx.pojo.DoctorWork" %>
<%@ page import="com.kx.pojo.Department1" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>康馨尚医预约挂号平台</title>
    <link rel="stylesheet" type="text/css" href="../static/css/style2.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
        <link rel="stylesheet" type="text/css" href="../static/css/sweetalert.css"/>
    <script type="text/javascript" src="../static/js/sweetalert.min.js"></script>
<body>
<style>
     .g-container {
        padding: 20px;
        background-color: #164583;
        background-color: rgba(22, 69, 131, .04);
        border-radius: 8px;
        border: none;
    }
    .yy{
    color:green;
    font-size:18px;
    }
    .nn{
     color:red;
    font-size:18px;
    }
</style>
<script>
    $(() => {
        var date = new Date();
    var currDay = date.getDay();
    var week = {
        1: '星期一',
        2: '星期二',
        3: '星期三',
        4: '星期四',
        5: '星期五',
        6: '星期六',
        0: '星期天'
    };
    var str = week[currDay];
    var day = 60 * 60 * 24 * 1000;
    var weekList = $(".week");
    var dateList = $(".date");
    function getNextWeek() {
        for (var i = 0; i < 7; i++) {
            weekList[i].innerHTML = week[new Date(Date.now() + i * day).getDay()];
            dateList[i].innerHTML = new Date(Date.now() + i * day).toLocaleDateString();
        }
    }
    getNextWeek();
    })
</script>
<div class="g-container">
    <div id="ksorder_top">
    <div  style="padding: 10px 0;">
        <a href="../index.jsp" style="color: #377bee;">首页&nbsp;&nbsp;</a>&gt;
        <span>&nbsp;&nbsp;医生排班</span>
    </div>
    <div class="g-container" >
        <div class="ksorder_box" style="background-color: #f0efef">
            <div class="ksorder_box_top" style="background-color: #f0efef">
                <p class="ksorder_box_top_p">
                    <strong><strong style="font-size: 20px;color: #00b3ec">${hospital.h_name}</strong>&nbsp;&nbsp;—&nbsp;&nbsp;<strong
                            style="color: #0caf33">${department1.d1_name}</strong></strong>
                <p type="hidden" id="dId" value="200003979"/>
                </p>
            </div>
            <div class="ksorder_box_content" style="background-color: #f0efef">
                <div class="ksorder_c_left">
                    <dl class="ksorder_box_con_dl" );
">
                        <dt><img src="../static/img/${hospital.h_door_img}"></dt>
                        <dd>
                            <dl>
                                <dt><span class="yygh_box_con_dl_span1"></span></dt>
                                <dd>医院地址:&nbsp;&nbsp; <span style="color: #333;">${hospital.h_address}</span></dd>
                            </dl><br>
                            <dl>
                                <dt><span class="yygh_box_con_dl_span2"></span></dt>
                                <dd><p>医院网址:&nbsp;&nbsp; <a href="${hospital.h_url}" target="_blank"
                                                            style="color: #333">${hospital.h_url}</a></p></dd>
                            </dl><br>
                            <dl>
                                <dt><span class="yygh_box_con_dl_span3"></span></dt>
                                <dd><p>医院总机查号台: &nbsp;&nbsp; <span style="color: #333">${department1.d1_tel}</span></p>
                                </dd>
                            </dl>
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="ksorder_time">
    <div class="ksorder_time_title">
        <!-- <a href="#" class="ksorder_time_ckb" >查看科室月排班</a> -->
        <p class="ksorder_t_p">医生排班表</p>
        <a href="<%=request.getContextPath()%>/department1/getDocument1Name.do" class="callback_ks">返回科室列表</a>
    </div>
    <div class="ksorder_time_center">
        <div class="ksorder_cen_l">
            <div class="ksorder_cen_l_l">
                <a class="ksorder_btn_left"></a>
                <ul>
                    <li style="font-size: 12px">时间</li>
                    <li style="font-size: 12px">放号状态</li>
                </ul>
            </div>
            <div class="ksorder_cen_l_table">
                <div class="ksorder_cen_l_t_c">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <th>
                                <p class="week"></p>
                                <p class="date"></p>
                            </th>
                            <th>
                                <p class="week"></p>
                                <p class="date"></p>
                            </th>
                            <th>
                                <p class="week"></p>
                                <p class="date"></p>
                            </th>
                            <th>
                                <p class="week"></p>
                                <p class="date"></p>
                            </th>
                            <th>
                                <p class="week"></p>
                                <p class="date"></p>
                            </th>
                            <th>
                                <p class="week"></p>
                                <p class="date"></p>
                            </th>
                            <th>
                                <p class="week"></p>
                                <p class="date"></p>
                            </th>
                        </tr>
                        <tr>
                            <td >
                                <c:if test="${timeList[0] eq list[0].or_data_time}">
                                    <span>${d_num-list[0].count>0?"<a class='yy' id='0' id="0"  >有号</a>":"<a class='nn'>挂满</a>"}</span>
                                </c:if>
                                <c:if test="${timeList[0] ne list[0].or_data_time}">
                                    <span><a class='yy' id='0' id="0"  >有号</a></span>
                                </c:if>
                            </td>
                            
                            <td >
                                <c:if test="${timeList[1] eq list[1].or_data_time}">
 									<span>${d_num-list[1].count>0?"<a class='yy' id='1'   >有号</a>":"<a class='nn'>挂满</a>"}</span>                                </c:if>
                                <c:if test="${timeList[1] ne list[1].or_data_time}">
                                    <span><a class='yy' id='1'   >有号</a></span>
                                </c:if>
                            </td>
                            
                            <td >
                                <c:if test="${timeList[2] eq list[2].or_data_time}">
                                    <span>${d_num-list[2].count>0?"<a class='yy' id='2'   >有号</a>":"<a class='nn'>挂满</a>"}</span>
                                </c:if>
                                <c:if test="${timeList[2] ne list[2].or_data_time}">
                                    <span><a class='yy' id='2'   >有号</a></span>
                                </c:if>
                            </td>
                            
                            <td >
                                <c:if test="${timeList[3] eq list[3].or_data_time}">
                                     <span>${d_num-list[3].count>0?"<a class='yy' id='3'   >有号</a>":"<a class='nn'>挂满</a>"}</span>
                                </c:if>
                                <c:if test="${timeList[3] ne list[3].or_data_time}">
                                    <span><a class='yy' id='3'   >有号</a></span>
                                </c:if>
                            </td>
                            
                            <td >
                                <c:if test="${timeList[4] eq list[4].or_data_time}">
                                     <span>${d_num-list[4].count>0?"<a class='yy' id='4'   >有号</a>":"<a class='nn'>挂满</a>"}</span>
                                </c:if>
                                <c:if test="${timeList[4] ne list[4].or_data_time}">
                                    <span><a class='yy' id='4'   >有号</a></span>
                                </c:if>
                            </td>
                            
                            <td >
                                <c:if test="${timeList[5] eq list[5].or_data_time}">
                                     <span>${d_num-list[5].count>0?"<a class='yy' id='5'   >有号</a>":"<a class='nn'>挂满</a>"}</span>
                                </c:if>
                                <c:if test="${timeList[5] ne list[5].or_data_time}">
                                    <span><a class='yy' id='5'   >有号</a></span>
                                </c:if>
                            </td>
                            
                            <td >
                                <c:if test="${timeList[6] eq list[6].or_data_time}">
                                     <span>${d_num-list[6].count>0?"<a class='yy' id='6'   >有号</a>":"<a class='nn'>挂满</a>"}</span>
                                </c:if>
                                <c:if test="${timeList[6] ne list[6].or_data_time}">
                                    <span><a class='yy' id='6'   >有号</a></span>
                                </c:if>
                            </td>
                            
                        </tr>
                    </table>
                </div>
            </div>
            <div class="ksorder_cen_l_r">
            </div>
        </div>
	<script type = "text/javascript">


    $(function () {
        <%--<%=request.getParameter("d_price")%>--%>
    	var or_price=5.5;//挂号费
    	var or_doc_id=<%=request.getParameter("d_id")%>//医生id
        var or_buyer_id = "${user.u_id}";
        var or_name = "${user.u_name}";
        var or_sex = "${user.u_gender}";
        var or_id_card = "${user.u_IdCard}";
        var or_payId = "null";
        $(document).on("click",".yy",function () {
            var day1 = 60 * 60 * 24 * 1000;
            var i = $(this).attr("id");
            var time = new Date(Date.now() + i * day1);
            var or_data_time = time.getFullYear()+"-"+(time.getMonth()+1)+"-"+time.getDate()
            var user = "${user.u_id}";
         		 if(user == 0){
                     window.location.replace("<%=request.getContextPath()%>/jsp/login.jsp");
        		}else{
                	 $.ajax({
                		url:"<%=request.getContextPath()%>/order/add",
                		data:{"or_buyer_id":or_buyer_id,"or_name":or_name,"or_doc_id":or_doc_id,
                			 "or_sex":or_sex,"or_id_card":or_id_card,"or_price":or_price,"or_data_time":or_data_time,"or_payId":or_payId},
                		type:"post",
                		dataType:"text",
                		success:function(data){
                			if(data == 1){
                				swal({
                                    title: "挂号成功",
                                    text: "要跳转回首页吗？",
                                    type: "success",
                                    showCancelButton: true,
                                    closeOnConfirm: false,
                                    confirmButtonText: "是的，我要回首页",
                                    confirmButtonColor: "#1fd783"
                                }, function () {
                                    window.location.replace("../index.jsp");
                                });
                			}else{
                				swal({
                                    title: "系统繁忙，请稍后重试。",
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
                	})
        		}
        })
    });
    </script>
        <div class="ksorder_cen_r">
            <div class="ksorder_cen_r_top">
                <h4>挂号规则</h4>
                <ul>
                    <li><span>更新时间：</span>每日8:30更新</li>
                    <li><span>预约周期：</span>7
                    </li>
                    <li><span>停挂时间：</span> 14:00:00</li>
                    <li><span>退号时间：</span> 就诊前一工作日14:00前取消</li>
                </ul>
                <dl>
                    <dt>特殊规则</dt>
                    <dd><p><br/>①&nbsp;
                        取号地点不同：西院区预约号取号地点：西院区门诊楼一层大厅挂号窗口取号。东院区预约号取号地点：东院区老门诊楼一层大厅挂号窗口或新门诊楼各楼层挂号/收费窗口取号。<br/></p>
                        <p><br/></p>
                        <p><br/></p>
                        <p><br/></p>
                        <p><br/></p>
                        <p><br/></p>
                        <p><br/></p>
                        <p><br/></p>
                        <p><br/></p></dd>
                </dl>
            </div>
        </div>
    </div>
</div>


<div id="footer">
    <div class="footer_nb">
        <div class="footer_img">
            <a class="footer_bjwjw" href="http://www.bjchfp.gov.cn/" target="_blank"></a>
            <a class="footer_liantong" href="http://www.10010.com/" target="_blank"></a>
        </div>
        <div class="footer_yb">
            <ul class="footer_ul">
                <li><a href="/gl/contact.htm">联系我们</a></li>
                <li><a href="/gl/partener.htm">合作伙伴</a></li>
                <li class="footer_ul_lipad"><a href="/gl/statement.htm">法律声明</a></li>
                <li><a href="/gl/service.htm">服务协议</a></li>
                <li><a href="/u/feedback.htm">意见反馈</a></li>
            </ul>
            <p class="footer_p_bqsm">版权所有:京ICP备05056889号</p>
        </div>
        <div class="footer_ewm">
            <h3>下载官方APP</h3>
            <span class="footer_ewm_span"><img src="../static/img/footer_ewm2.png"></span>
        </div>
        <div class="footer_ewm">
            <h3>关注官方微信</h3>
            <span class="footer_ewm_span"><img src="../static/img/footer_ewm.png"></span>
        </div>
    </div>
</div>
</div>