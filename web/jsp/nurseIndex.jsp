<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="author" content="bianhui">
<meta name="baidu-site-verification" content="0SLKtvMiKF">
<meta name="keywords" content="陪诊，就医陪诊，陪诊服务，医院陪诊，挂号陪诊服务">
<meta name="description"
	content="小趣好护士，是一家提供专业就医陪诊服务的网上生活平台，致力于解决患者就医难，看病难的问题。专业护士提供诊前咨询提醒，排队取号，就诊陪护取药，诊后记录等服务，为患者提供完善的医疗陪诊服务。">
<title>就医陪诊，护士陪诊，小趣好护士-国内领先的医疗陪诊服务平台</title>
<link rel="icon" href="static/images/favicon1.png">
<link href=".././static/css/app.ea763df3f33dbeb9785fafb8b8e1d83e.css"
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
		<div id="Index" class="Index">
			<div class="TopNav"></div>
			<div data-v-bc0ed010="" id="header" class="header isFixed">
				<div data-v-bc0ed010="" class="headContainer">
					<img data-v-bc0ed010="" src=".././static/img/ic_logo.7314bd2.png"
						alt="logo">
					<p data-v-bc0ed010="" class="changeCity" style="display: none;">
						北京市 <span data-v-bc0ed010="" type="" name="" readonly="readonly"
							class="medical_service_right">切换城市 </span>
					</p>
					<div data-v-bc0ed010="">
						<a data-v-bc0ed010="" href="/" class="router-link-active isSelect">首页</a>
						<a data-v-bc0ed010="" href="/appLoad" class="">下载app</a>
					</div>
					<a data-v-bc0ed010="" href="/packageList" class="order">立即预约</a>
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
			<div class="Banner">
				<img src=".././static/index/banner.png"> <a href="packageList.jsp"
					class="">立即预约</a>
			</div>
			<div class="banner1">
				<img src=".././static/images/banner.png" alt="banner">
			</div>
			<div class="ServeType">
				<h1>我们为您提供的服务</h1>
				<div class="ServeTypeList">
					<ul>
						<li class="show"><img src=".././static/index/ic_hushizixun.png">
							<hr>
							<h3>护士咨询</h3>
							<p>为患者解答就医前的疑问，缓解患者的心理压力</p></li>
						<li class="hide"><p>专业护士帮您迅速了解自己症状对应的就诊科室，了解诊后恢复期的注意事项，亦可进行日常健康方面的答疑</p></li>
					</ul>
					<ul>
						<li class="show"><img src=".././static/index/ic_hushipeizhen.png">
							<hr>
							<h3>护士陪诊</h3>
							<p>陪同老人、儿童、孕妇、异地患者、残障人士安心就医</p></li>
						<li class="hide"><p>一对一的专业护士陪诊服务，温馨提示诊前注意事项，提前了解就诊及检查流程，熟悉医院环境，全程协助与陪伴，提高就诊效率，减少入院等候时间</p></li>
					</ul>
					<ul>
						<li class="show"><img src=".././static/index/ic_zhiliaopeihu.png">
							<hr>
							<h3>治疗陪护</h3>
							<p>陪护门诊手术、化疗、输液、透析等较长时间的治疗</p></li>
						<li class="hide"><p>专业护士陪伴您在医院治疗，协助解决行动不便的问题，密切关注您的身体状态，帮助您与当院治疗医生和护士沟通，并且通过心理疏导缓解您在病痛中的焦虑</p></li>
					</ul>
					<ul>
						<li class="show"><img src=".././static/index/ic_jiatinghuli.png">
							<hr>
							<h3>家庭护理</h3>
							<p>为有需求的患者提供专业护士上门护理的服务</p></li>
						<li class="hide"><p>
								专业护士上门护理服务，提供打针、输液、换药、吸氧管道护理等常规医疗护理服务；为不便外出的用户提供恢复期的家庭护理服务</p></li>
					</ul>
				</div>
				<a href="/PackageList" class="">立即预约</a>
			</div>
			<div class="ServeProceed">
				<h1>我们的服务流程</h1>
				<div class="ProceedContain">
					<div>
						<img src=".././static/index/ic_kuaisuyuyuexiadan.png">
						<hr>
						<h3>快速下单预约</h3>
						<p>公众号手机便捷下单平台快速响应</p>
					</div>
					<div>
						<img src=".././static/index/ic_zaixiananquanzhifu.png">
						<hr>
						<h3>在线安全支付</h3>
						<p>平台对接专业第三方支付安全有保证</p>
					</div>
					<div>
						<img src=".././static/index/ic_zhuanyehushifuwu.png">
						<hr>
						<h3>专业护士服务</h3>
						<p>认证护士考核技能考核提供最优质服务</p>
					</div>
					<div>
						<img src=".././static/index/ic_dingdanwancpinglun.png">
						<hr>
						<h3>订单完成评价</h3>
						<p>倾听用户需求不断自我完善</p>
					</div>
				</div>
			</div>
			<div class="Protection">
				<h1>我们的服务保障</h1>
				<div class="ProtectionContain">
					<div class="borderTop">
						<div>
							<img src=".././static/index/ic_yitihua.png">
							<hr>
							<h3>一体化</h3>
							<p>专业团队全程跟踪服务看诊就医也能优质暖心</p>
						</div>
					</div>
					<div class="borderTop">
						<div>
							<img src=".././static/index/ic_quanfangwei.png">
							<hr>
							<h3>全方位</h3>
							<p>从问诊陪护到家庭护理专业护士一站式搞定</p>
						</div>
					</div>
					<div class="borderTop">
						<div>
							<img src=".././static/index/ic_anquanzhifu.png">
							<hr>
							<h3>安全保障</h3>
							<p>护士实名认证且每次服务平台为双方赠送保险</p>
						</div>
					</div>
					<div class="borderTop">
						<div>
							<img src=".././static/index/ic_zhuanyehua.png">
							<hr>
							<h3>专业化</h3>
							<p>近万名签约专业护士为您提供多样化服务</p>
						</div>
					</div>
				</div>
			</div>
			<div class="Introduce">
				<div class="block">
					<div class="el-carousel">
						<div class="el-carousel__container">
							<button class="el-carousel__arrow el-carousel__arrow--left"
								style="display: none;">
								<i class="el-icon-arrow-left"></i>
							</button>
							<button class="el-carousel__arrow el-carousel__arrow--right"
								style="display: none;">
								<i class="el-icon-arrow-right"></i>
							</button>
							<div class="el-carousel__item is-active"
								style="transform: translateX(0px) scale(1);">
								<!---->
								<div class="left">
									<img src=".././static/index/ic_quotes.png">
									<p>
										“小趣好护士”APP是趣护网络旗下产品，2016年3月上线，目前服务已经覆盖全国42个城市，平台入驻护士近万人。功能包括护士在线咨询、护士陪诊、家庭护理、治疗陪护、预约挂号、症状自查、健康资讯等围绕患者的全流程服务。
									</p>
								</div>
								<div class="right">
									<img src=".././static/images/lunbo1.png">
								</div>
							</div>
							<div class="el-carousel__item"
								style="transf orm: translateX(1000px) scale(1);">
								<!---->
								<div class="left">
									<img src=".././static/index/ic_quotes.png">
									<p>
										上海趣护网络科技有限公司创立于2015年，为京颐集团成员企业，是一家专业从事移动互联网就医陪诊咨询与服务的网上生活平台。公司全力创设兼职护士服务平台，致力于改善患者就医和居家体验，构建更加完善的医疗人文环境。
									</p>
								</div>
								<div class="right">
									<img src=".././static/images/lunbo2.png">
								</div>
							</div>
							<div class="el-carousel__item"
								style="transform: translateX(-1000px) scale(1);">
								<!---->
								<div class="left">
									<img src=".././static/index/ic_quotes.png">
									<p>
										2017年6月，趣护网络从母公司趣医网独立，并完成了6400万人民币A轮融资，由京颐集团（Kyeegroup）领投，软银中国资本（SBCVC）、弘晖资本（HighLight
										Capital）、德屹资本（DYEE Capital）跟投。</p>
								</div>
								<div class="right">
									<img src=".././static/images/lunbo3.png">
								</div>
							</div>
						</div>
						<ul class="el-carousel__indicators">
							<li class="el-carousel__indicator is-active"><button
									class="el-carousel__button">
									<!---->
								</button></li>
							<li class="el-carousel__indicator"><button
									class="el-carousel__button">
									<!---->
								</button></li>
							<li class="el-carousel__indicator"><button
									class="el-carousel__button">
									<!---->
								</button></li>
						</ul>
						<div class="resize-triggers">
							<div class="expand-trigger">
								<div style="width: 1001px; height: 301px;"></div>
							</div>
							<div class="contract-trigger"></div>
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
		
	</div>
	<script type="text/javascript"
		src=".././static/js/manifest.aa6e66756d04bfd779d5.js"></script>
	<script type="text/javascript"
		src=".././static/js/vendor.36cf3a83b5f54e5c091b.js"></script>
	<script type="text/javascript"
		src=".././static/js/app.c1c0140456904c513e61.js"></script>
	<div class="mint-indicator" style="display: none;">
		<div class="mint-indicator-wrapper" style="padding: 20px;">
			<span class="mint-indicator-spin"><div
					class="mint-spinner-snake"
					style="border-top-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); height: 32px; width: 32px;"></div></span>
			<span class="mint-indicator-text" style="">加载中...</span>
		</div>
		<div class="mint-indicator-mask"></div>
	</div>
	<script type="text/javascript"
		src="https://api.map.baidu.com/api?v=2.0&amp;ak=eZRMaEOUkysATnOc9NP8Ayjp"></script>
	<script type="text/javascript"
		src="https://api.map.baidu.com/getscript?v=2.0&amp;ak=eZRMaEOUkysATnOc9NP8Ayjp&amp;services=&amp;t=20180629105709"></script>
</body>
</html>