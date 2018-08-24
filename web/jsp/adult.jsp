<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="author" content="bianhui">
<meta name="baidu-site-verification" content="0SLKtvMiKF">
<meta name="keywords" content="陪诊，就医陪诊，陪诊服务，医院陪诊，挂号陪诊服务">
<meta name="description"
	content="小趣好护士，是一家提供专业就医陪诊服务的网上生活平台，致力于解决患者就医难，看病难的问题。专业护士提供诊前咨询提醒，排队取号，就诊陪护取药，诊后记录等服务，为患者提供完善的医疗陪诊服务。">
<title>就医陪诊，护士陪诊，小趣好护士-国内领先的医疗陪诊服务平台</title>
<link rel="icon" href="static/images/favicon1.png">
<link href="./static/css/app.ea763df3f33dbeb9785fafb8b8e1d83e.css"
	rel="stylesheet">
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&amp;s=1&amp;ak=eZRMaEOUkysATnOc9NP8Ayjp&amp;callback=init"></script>
<style type="text/css">
@
keyframes resizeanim {from { opacity:0;
	
}

to {
	opacity: 0;
}

}
.resize-triggers {
	animation: 1ms resizeanim;
	visibility: hidden;
	opacity: 0;
}

.resize-triggers, .resize-triggers>div, .contract-trigger:before {
	content: " ";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	overflow: hidden;
	z-index: -1
}

.resize-triggers>div {
	background: #eee;
	overflow: auto;
}

.contract-trigger:before {
	width: 200%;
	height: 200%;
}
</style>
</head>
<body>
	<div id="app">
		<div data-v-dcfb3db2="" class="ProductDetail detailContainer">
			<div data-v-bc0ed010="" data-v-dcfb3db2="" id="header" class="header">
				<div data-v-bc0ed010="" class="headContainer">
					<img data-v-bc0ed010="" src="./static/img/ic_logo.7314bd2.png"
						alt="logo">
					<p data-v-bc0ed010="" class="changeCity" style="display: none;">
						北京市 <span data-v-bc0ed010="" type="" name="" readonly="readonly"
							class="medical_service_right">切换城市 </span>
					</p>
					<div data-v-bc0ed010="">
						<a data-v-bc0ed010="" href="/" class="router-link-active">首页</a> <a
							data-v-bc0ed010="" href="/appLoad" class="">下载app</a>
					</div>
					<a data-v-bc0ed010="" href="/packageList" class="order"
						style="display: none;">立即预约</a>
				</div>
				<div data-v-bc0ed010="" class="pop-container pop-hos changeCity1">
					<div class="pop-mask"></div>
					<div class="pop-cont">
						<div class="pop-head head1">
							<div class="hos-tab hos-tab1">
								<span class="tab-num">1</span> <span class="tab-txt">选择省份</span>
							</div>
							<div class="hos-tab hos-tab2">
								<span class="tab-num">2</span> <span class="tab-txt">选择城市</span>
							</div>
						</div>
						<div class="hos-cont">
							<div class="hos-item active">
								<p class="item-top">请选择省份：</p>
								<div class="list-cont">
									<ul class="clx">
										<li class=""><span>安徽</span></li>
										<li class=""><span>北京</span></li>
										<li class=""><span>福建</span></li>
										<li class=""><span>甘肃</span></li>
										<li class=""><span>广东</span></li>
										<li class=""><span>广西</span></li>
										<li class=""><span>贵州</span></li>
										<li class=""><span>海南</span></li>
										<li class=""><span>河北</span></li>
										<li class=""><span>河南</span></li>
										<li class=""><span>黑龙江</span></li>
										<li class=""><span>湖北</span></li>
										<li class=""><span>湖南</span></li>
										<li class=""><span>吉林</span></li>
										<li class=""><span>江苏</span></li>
										<li class=""><span>江西</span></li>
										<li class=""><span>辽宁</span></li>
										<li class=""><span>宁夏</span></li>
										<li class=""><span>山东</span></li>
										<li class=""><span>山西</span></li>
										<li class=""><span>陕西</span></li>
										<li class=""><span>上海</span></li>
										<li class=""><span>四川</span></li>
										<li class=""><span>天津</span></li>
										<li class=""><span>新疆</span></li>
										<li class=""><span>云南</span></li>
										<li class=""><span>浙江</span></li>
										<li class=""><span>重庆</span></li>
									</ul>
								</div>
							</div>
							<div class="hos-item">
								<p class="item-top">您当前选择的省份：</p>
								<div class="list-cont cityList">
									<ul class="clx">
										<li class="one-line"><span>合肥市</span></li>
										<li class="one-line"><span>蚌埠市</span></li>
										<li class="one-line"><span>亳州市</span></li>
										<li class="one-line"><span>阜阳市</span></li>
									</ul>
								</div>
							</div>
							<div class="hos-item hos-list">
								<p class="item-top">您当前选择的城市：</p>
								<div class="hos-level-cont clx">
									<div class="hos-left">
										<span>级别：</span>
									</div>
									<div class="hos-right">
										<ul class="clx"></ul>
									</div>
								</div>
								<div class="hos-area-cont clx">
									<div class="hos-left">
										<span>区域：</span>
									</div>
									<div class="hos-right">
										<ul class="clx"></ul>
									</div>
								</div>
								<div class="list-cont hosList">
									<ul class="clx"></ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-v-dcfb3db2="" class="ProductDetail">
				<div data-v-dcfb3db2="" class="proDetailHead">
					<div data-v-dcfb3db2="" class="h_img">
						<img data-v-dcfb3db2="" alt=""
							src="https://ofdwvn1op.qnssl.com/setPhoto20170731160915744.png">
					</div>
					<div data-v-dcfb3db2="" class="proDetHeadInfor">
						<div data-v-dcfb3db2="" class="line_one">
							<h1 data-v-dcfb3db2="">成人陪诊</h1>
							<p data-v-dcfb3db2="">4小时</p>
						</div>
						<div data-v-dcfb3db2="" class="line_two">
							<p data-v-dcfb3db2="">规划流程 节省时间</p>
						</div>
						<div data-v-dcfb3db2="" class="line_three">
							<div data-v-dcfb3db2="" class="line_three_txt">
								<p data-v-dcfb3db2="">
									188<span data-v-dcfb3db2="">元</span>
								</p>
								<p data-v-dcfb3db2="">服务时间 07:00-19:00 基础服务时长为4小时,超时25元 /
									30分钟</p>
							</div>
							<button data-v-dcfb3db2="">立即预约</button>
						</div>
					</div>
				</div>
				<div data-v-dcfb3db2="" class="serviceProData">
					<div data-v-dcfb3db2="" class="left">
						<div data-v-dcfb3db2="" id="myNav" class="tabList">
							<div data-v-dcfb3db2="" class="navBoxChild">
								<a data-v-dcfb3db2="" class="selected">服务详情</a>
							</div>
							<div data-v-dcfb3db2="" class="navBoxChild">
								<a data-v-dcfb3db2="" class="">常见问答</a>
							</div>
							<button data-v-dcfb3db2="" style="display: none;">立即预约</button>
						</div>
						<div data-v-dcfb3db2="" id="tabBox" class="tabBox">
							<div data-v-dcfb3db2="" class="d_jump serviceDetail">
								<ul data-v-dcfb3db2="">
									<h4 data-v-dcfb3db2="">服务介绍</h4>
									<li data-v-dcfb3db2="">协助患者医院内排队取号，取送化验结果，缴费取药，办理住院手续，让患者轻松就诊。</li>
									<li data-v-dcfb3db2="" class="servcePic"><img
										data-v-dcfb3db2=""
										src="https://o95rbglb1.qnssl.com/setDetailCommon3.png"><img
										data-v-dcfb3db2=""
										src="https://o95rbglb1.qnssl.com/setDetailCommon4.png"></li>
								</ul>
								<ul data-v-dcfb3db2="">
									<h4 data-v-dcfb3db2="">服务流程</h4>
									<li data-v-dcfb3db2="">诊前提示：<br>① 了解您的病情、病史、近期服药情况等；<br>②
										提示您诊前所需准备物品（如医保卡、身份证既往检查结果等）以及就诊前所需要做的准备(如空腹、憋尿等)。
									</li>
									<li data-v-dcfb3db2="">诊中陪伴：<br>①
										提前到达医院，根据您的情况提前为您规划并介绍就诊流程，为您节约时间；<br>② 密切观察您的生命体征及病情变化；<br>③
										征求您的意见，帮助您和医生进行有效的沟通，解读医生开具的医嘱、及检查项目等；<br>④
										协助您缴费、帮您取号、陪您候诊、带您取药、陪同检查、送取化验标本、等候检查结果、协助办理住院手续、整理本次就诊档案。
									</li>
									<li data-v-dcfb3db2="">诊后提醒：<br>①
										根据医生开具的医嘱，给予您相应的用药和饮食指导并记录；<br>② 提醒您复诊或预约的其他检查项目的注意事项。
									</li>
									<!---->
								</ul>
								<ul data-v-dcfb3db2="">
									<h4 data-v-dcfb3db2="">服务须知</h4>
									<li data-v-dcfb3db2="">护士会在第一时间主动与您联系，沟通症状、病史、挂号情况及就诊科室，约定就诊行程；</li>
									<li data-v-dcfb3db2="">服务当日，护士将提前到达医院为您规划就诊流程，并在您预约的医院进行一对一的陪诊服务；</li>
									<li data-v-dcfb3db2="">护士会在与您见面时，或到达预约时间后，点击开始服务；</li>
									<li data-v-dcfb3db2="">服务过程中遇到的任何问题及建议，请联系小趣好护士客服400-921-5800，我们会及时处理并反馈；</li>
									<li data-v-dcfb3db2="">服务结束时，护士会帮您整理就诊档案，记录用药提醒。</li>
									<!---->
								</ul>
								<ul data-v-dcfb3db2="">
									<h4 data-v-dcfb3db2="">退改规则</h4>
									<li data-v-dcfb3db2="">取消订单：服务开始2小时内取消订单，将收取50%的订单费用；</li>
									<li data-v-dcfb3db2="">修改订单可致电小趣好护士客服热线：400-921-5800（客服工作时间7:00-20:00）。</li>
									<!---->
								</ul>
							</div>
							<div data-v-dcfb3db2="" class="d_jump commonPro">
								<h4 data-v-dcfb3db2="">常见问答</h4>
								<div data-v-dcfb3db2="" class="problemText">
									<h4 data-v-dcfb3db2="">
										<img data-v-dcfb3db2="" src="/static/images/ic_question.png"
											alt="问：">&nbsp;<span data-v-dcfb3db2="">成人陪诊针对的用户？</span>
									</h4>
									<p data-v-dcfb3db2="">成人陪诊主要为15周岁～65周岁的用户提供就医陪诊的服务。</p>
								</div>
								<div data-v-dcfb3db2="" class="problemText">
									<h4 data-v-dcfb3db2="">
										<img data-v-dcfb3db2="" src="/static/images/ic_question.png"
											alt="问：">&nbsp;<span data-v-dcfb3db2="">成人陪诊的优势？</span>
									</h4>
									<p data-v-dcfb3db2="">诊前准备事项提醒，规划就诊流程，节约就诊时间，高效率就诊。</p>
								</div>
								<div data-v-dcfb3db2="" class="problemText">
									<h4 data-v-dcfb3db2="">
										<img data-v-dcfb3db2="" src="/static/images/ic_question.png"
											alt="问：">&nbsp;<span data-v-dcfb3db2="">成人陪诊时间限定？</span>
									</h4>
									<p data-v-dcfb3db2="">陪诊时间限于预约时间当日，超过4小时需支付25元/半小时超时费用。跨日陪诊需重新预约陪诊服务。</p>
								</div>
								<div data-v-dcfb3db2="" class="problemText">
									<h4 data-v-dcfb3db2="">
										<img data-v-dcfb3db2="" src="/static/images/ic_question.png"
											alt="问：">&nbsp;<span data-v-dcfb3db2="">可以要求护士同时进行多人成人陪诊服务吗？</span>
									</h4>
									<p data-v-dcfb3db2="">小趣好护士提供的是一对一陪诊服务，多人就诊时，可根据就诊人数预约陪诊服务</p>
								</div>
								<div data-v-dcfb3db2="" class="problemText">
									<h4 data-v-dcfb3db2="">
										<img data-v-dcfb3db2="" src="/static/images/ic_question.png"
											alt="问：">&nbsp;<span data-v-dcfb3db2="">可不可以指定挂哪个医生的号？</span>
									</h4>
									<p data-v-dcfb3db2="">我们根据您的需求帮您查找医生的号源情况或在您预约就诊当天，现场帮您排队挂号，但不保证能够挂到。</p>
								</div>
							</div>
						</div>
					</div>
					<div data-v-dcfb3db2="" class="right">
						<div data-v-dcfb3db2="" class="commond">
							<h4 data-v-dcfb3db2="">相关推荐</h4>
							<div data-v-dcfb3db2="">
								<img data-v-dcfb3db2=""
									src="https://ofdwvn1op.qnssl.com/setPhoto20170731160915744.png">
								<span data-v-dcfb3db2="">成人陪诊</span>
							</div>
							<div data-v-dcfb3db2="">
								<img data-v-dcfb3db2=""
									src="https://ofdwvn1op.qnssl.com/setPhoto20170731160628750.png">
								<span data-v-dcfb3db2="">孕妇陪诊</span>
							</div>
							<div data-v-dcfb3db2="">
								<img data-v-dcfb3db2=""
									src="https://ofdwvn1op.qnssl.com/setPhoto20170731160648328.png">
								<span data-v-dcfb3db2="">老人陪诊</span>
							</div>
							<div data-v-dcfb3db2="">
								<img data-v-dcfb3db2=""
									src="https://ofdwvn1op.qnssl.com/setPhoto20170731160702121.png">
								<span data-v-dcfb3db2="">儿童陪诊</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div data-v-dcfb3db2="" class="P_Footer">
				<div class="p-footer-container">
					<div>
						<img src="/static/packageFooter/ic_bianjie-.png">
						<h3>便捷</h3>
						<p>同诊就医 省时省心</p>
					</div>
					<div>
						<img src="/static/packageFooter/ic_youzhi-.png">
						<h3>优质</h3>
						<p>专业护士 技能优越</p>
					</div>
					<div>
						<img src="/static/packageFooter/ic_tiexin-.png">
						<h3>贴心</h3>
						<p>尽心尽力 暖心服务</p>
					</div>
					<div>
						<img src="/static/packageFooter/ic_quanmian-.png">
						<h3>全面</h3>
						<p>快速响应 全面护理</p>
					</div>
				</div>
			</div>
			<div data-v-dcfb3db2="" class="Footer">
				<div class="FooterContain1">
					<div class="left">
						<div class="LeftLineOne">
							<a href="http://www.kyee.com.cn/" target="_blank"><img
								src="/static/images/ic_logo_1.png"></a>
							<div class="logo_line"></div>
							<img src="/static/images/ic_logo_2.png">
							<div class="LineOneTxt">
								<p>上海趣护网络科技有限公司</p>
								<div>
									<p>
										<img src="/static/images/ic_phone.png"><span>公司电话:
											021-34772878</span>
									</p>
									<p>
										<img src="/static/images/ic_address.png"><span>上海市徐汇区漕溪北路595号
											上海电影集团C座</span>
									</p>
								</div>
							</div>
						</div>
						<div class="LeftLineTwo">
							<a href="http://www.kyee.com.cn/" target="_blank">京颐股份</a> <a
								href="https://www.quyiyuan.com/" target="_blank">趣医网</a> <a
								href="https://www.feiyi.com.cn/" target="_blank">飞医网</a> <a
								href="https://www.512ks.cn/home" target="_blank">512考试教育网</a> <a
								href="http://medical.sjtu.edu.cn/" target="_blank">上海交大-京颐股份-趣医网联合研究中心</a>
							<br> <a href="https://yun.kyee.com.cn/" target="_blank"
								class="last">京颐医疗云</a>
						</div>
					</div>
					<div class="right">
						<div class="rightLineOne">
							<div class="weChat">
								<div class="codeContainer">
									<img src="/static/iconImg/public_code.png">
									<div></div>
								</div>
								<img src="/static/images/ic_weixin.png">
							</div>
							<div>
								<a href="http://weibo.com/u/5807150335" target="_blank"><img
									src="/static/images/ic_weibo.png"></a>
							</div>
							<div class="mail">
								<span>bd@haohushi.me</span> <img
									src="/static/images/ic_youxiang.png">
							</div>
						</div>
						<div class="rightLineTwo">
							<p>客服电话：400-106-2966</p>
						</div>
					</div>
				</div>
				<div class="FooterContain2">
					<div>
						<p>
							京颐集团成员企业<span>上海趣护网络科技有限公司</span>
						</p>
						<a href="http://www.miitbeian.gov.cn/" target="_blank"
							class="hu_icp">沪ICP备15058044号</a> <a target="_blank"
							href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010402004433"
							class="gongan"><img src="./static/img/ic_gongan.d0289dc.png"
							alt="" class="ic_gongan"> 沪公网安备 &nbsp;&nbsp;
							31010402004433号 </a>
					</div>
				</div>
			</div>
		</div>
		<div data-v-384d5232="" class="two_dimension_code"
			style="display: none;">
			<div data-v-384d5232="" class="two_dimension_code_wrap">
				<div data-v-384d5232="" class="two_dimension_code_head">
					<span data-v-384d5232="" class="text">查询订单</span> <span
						data-v-384d5232="" class="close"></span>
				</div>
				<span data-v-384d5232="" class="download_text">关注公众号或下载app跟进订单信息</span>
				<div data-v-384d5232="" class="two_dimension_code_img">
					<img data-v-384d5232="" src="" alt=""> <img
						data-v-384d5232="" src="" alt="">
					<div data-v-384d5232="">
						<span data-v-384d5232="">关注公众号</span> <span data-v-384d5232="">下载APP</span>
					</div>
				</div>
			</div>
			<div data-v-384d5232="" class="mask"></div>
		</div>
		<div class="alert_icon">
			<a href="https://ikefu.baidu.com/web/quyiyuan" target="_blank"
				class="online_service"></a> <a style="display: none;">二维码</a> <a
				class="go_top" style="display: none;"></a>
		</div>
	</div>
	<script type="text/javascript"
		src="./static/js/manifest.aa6e66756d04bfd779d5.js"></script>
	<script type="text/javascript"
		src="./static/js/vendor.36cf3a83b5f54e5c091b.js"></script>
	<script type="text/javascript"
		src="./static/js/app.c1c0140456904c513e61.js"></script>
	<script type="text/javascript"
		src="https://api.map.baidu.com/api?v=2.0&amp;ak=eZRMaEOUkysATnOc9NP8Ayjp"></script>
	<script type="text/javascript"
		src="https://api.map.baidu.com/getscript?v=2.0&amp;ak=eZRMaEOUkysATnOc9NP8Ayjp&amp;services=&amp;t=20180629105709"></script>
	<script
		src="https://api.map.baidu.com/getscript?v=2.0&amp;ak=eZRMaEOUkysATnOc9NP8Ayjp&amp;services=&amp;t=20180629105709"></script>
	<div class="mint-indicator" style="display: none;">
		<div class="mint-indicator-wrapper" style="padding: 20px;">
			<span class="mint-indicator-spin"><div
					class="mint-spinner-snake"
					style="border-top-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); height: 32px; width: 32px;"></div></span>
			<span class="mint-indicator-text" style="">加载中...</span>
		</div>
		<div class="mint-indicator-mask"></div>
	</div>
</body>

</html>