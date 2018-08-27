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
    <link rel="stylesheet" type="text/css" href="../static/css/style.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <script type="text/javascript" src="../static/js/jquery-1.12.4.js"></script>
        <%
        Hospital hospital = (Hospital) request.getAttribute("hospital");
        DoctorWork doctorWork = (DoctorWork) request.getAttribute("doctorWork");
        Department1 department1 = (Department1) request.getAttribute("department1");
        if (hospital == null){
        String d_id = request.getParameter("d_id");
        String d_department1 = request.getParameter("d_department1");
        System.out.println("jsp中--------------"+d_id+"   "+d_department1);
        String path = request.getContextPath();
        request.getRequestDispatcher(path+"/doctorWork/getInfo?d_id="+d_id+"&d_department1="+d_department1).forward(request,response);
        }
        %>

<body>
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

<div id="ksorder_top">
    <div class="ksorder_box">
        <div class="ksorder_box_top">
            <p class="ksorder_box_top_p">
                <strong><strong style="font-size: 20px;color: #00b3ec">${hospital.h_name}</strong>&nbsp;&nbsp;—&nbsp;&nbsp;<strong
                        style="color: #0caf33">${department1.d1_name}</strong></strong>
                <p type="hidden" id="dId" value="200003979"/>
            </p>
        </div>
        <div class="ksorder_box_content">
            <div class="ksorder_c_left">
                <dl class="ksorder_box_con_dl">
                    <dt><img src="../static/img/1.jpg"></dt>
                    <dd>
                        <dl>
                            <dt><span class="yygh_box_con_dl_span1"></span></dt>
                            <dd>医院地址:&nbsp;&nbsp; <span style="color: black;">${hospital.h_address}</span></dd>
                        </dl>
                        <dl>
                            <dt><span class="yygh_box_con_dl_span2"></span></dt>
                            <dd><p>医院网址:&nbsp;&nbsp; <a href="${hospital.h_url}" target="_blank"
                                                        style="color: black">${hospital.h_url}</a></p></dd>
                        </dl>
                        <dl>
                            <dt><span class="yygh_box_con_dl_span3"></span></dt>
                            <dd><p>医院总机查号台: &nbsp;&nbsp; <span style="color: black">${department1.d1_tel}</span></p>
                            </dd>
                        </dl>
                        <dl>
                            <dt><span class="yygh_box_con_dl_span4"></span></dt>
                            <dd><p> 东院：106,108,110,111,116,684,685到东单路口北； 41,104快，814到东单路口南；
                                1,52,802到东单路口西；20,25,37，39,到东单路口东；103,104,420，803到新东安市场；地铁1、5号线到东单。西院：68到辟才胡同东口；更多乘车路线详见须知 </p>
                            </dd>
                        </dl>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</div>
<div id="ksorder_time">
    <div class="ksorder_time_title">
        <!-- <a href="#" class="ksorder_time_ckb" >查看科室月排班</a> -->
        <p class="ksorder_t_p">医生排班表</p>
        <a href="/hp/appoint/1/1.htm" class="callback_ks">返回科室列表</a>
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
                            <td>
                                <c:if test="${timeList[0] eq list[0].or_data_time}">
                                    <span>${10-list[0].count>0?"<span style='color:green;font-size:18px'>有号</span>":"<span style='color:red;font-size:18px'>挂满</span>"}</span>
                                </c:if>
                                <c:if test="${timeList[0] ne list[0].or_data_time}">
                                    <span><span style='color:green;font-size:18px'>有号</span></span>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${timeList[1] eq list[1].or_data_time}">
                                    <span>${10-list[1].count>0?"<span style='color:green;font-size:18px'>有号</span>":"<span style='color:red;font-size:18px'>挂满</span>"}</span>
                                </c:if>
                                <c:if test="${timeList[1] ne list[1].or_data_time}">
                                    <span><span style='color:green;font-size:18px'>有号</span></span>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${timeList[2] eq list[2].or_data_time}">
                                    <span>${10-list[2].count>0?"<span style='color:green;font-size:18px'>有号</span>":"<span style='color:red;font-size:18px'>挂满</span>"}</span>
                                </c:if>
                                <c:if test="${timeList[2] ne list[2].or_data_time}">
                                    <span><span style='color:green;font-size:18px'>有号</span></span>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${timeList[3] eq list[3].or_data_time}">
                                    <span>${10-list[3].count>0?"<span style='color:green;font-size:18px'>有号</span>":"<span style='color:red;font-size:18px'>挂满</span>"}</span>
                                </c:if>
                                <c:if test="${timeList[3] ne list[3].or_data_time}">
                                    <span><span style='color:green;font-size:18px'>有号</span></span>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${timeList[4] eq list[4].or_data_time}">
                                    <span>${10-list[4].count>0?"<span style='color:green;font-size:18px'>有号</span>":"<span style='color:red;font-size:18px'>挂满</span>"}</span>
                                </c:if>
                                <c:if test="${timeList[4] ne list[4].or_data_time}">
                                    <span><span style='color:green;font-size:18px'>有号</span></span>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${timeList[5] eq list[5].or_data_time}">
                                    <span>${10-list[5].count>0?"<span style='color:green;font-size:18px'>有号</span>":"<span style='color:red;font-size:18px'>挂满</span>"}</span>
                                </c:if>
                                <c:if test="${timeList[5] ne list[5].or_data_time}">
                                    <span><span style='color:green;font-size:18px'>有号</span></span>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${timeList[6] eq list[6].or_data_time}">
                                    <span>${10-list[6].count>0?"<span style='color:green;font-size:18px'>有号</span>":"<span style='color:red;font-size:18px'>挂满</span>"}</span>
                                </c:if>
                                <c:if test="${timeList[6] ne list[6].or_data_time}">
                                    <span><span style='color:green;font-size:18px'>有号</span></span>
                                </c:if>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="ksorder_cen_l_r">

            </div>
        </div>
        <!--放号提醒-->

        <div class="ksorder_cen_r">
            <div class="ksorder_cen_r_top">
                <h4>预约规则</h4>
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
