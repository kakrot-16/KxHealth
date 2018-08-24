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
<link rel="icon" href=".././static/images/favicon1.png">
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

.ul2{
	float:right;
	
}


</style>

</head>
<body>
	<div id="app">
		<div data-v-6f74c2cb="" id="PackageList" class="PackageList">
			<div data-v-bc0ed010="" data-v-6f74c2cb="" id="header" class="header">
				<div data-v-bc0ed010="" class="headContainer">
					<img data-v-bc0ed010="" src=".././static/img/ic_logo.7314bd2.png"
						alt="logo">
					<p data-v-bc0ed010="" class="changeCity">
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
			<div data-v-6f74c2cb="" class="banner">
				<img data-v-6f74c2cb="" src=".././static/images/banner.png" alt="banner">
			</div>
			<div data-v-6f74c2cb="" id="navContainer">
				<div data-v-6f74c2cb="" id="navBox" class="navBox">
					<!---->
					<div data-v-6f74c2cb="" class="navBoxChild">
						<div data-v-6f74c2cb="" class="">
							<img data-v-6f74c2cb="" src=".././static/images/0.png"> <a
								data-v-6f74c2cb="" href="#peizhen"><span
								data-v-6f74c2cb="">护士陪诊</span></a>
						</div>
					</div>
					<div data-v-6f74c2cb="" class="navBoxChild">
						<div data-v-6f74c2cb="" class="">
							<img data-v-6f74c2cb="" src=".././static/images/2.png"> <a
								data-v-6f74c2cb="" href="#huli"><span
								data-v-6f74c2cb="">家庭护理</span></a>
						</div>
					</div>
					<div data-v-6f74c2cb="" class="navBoxChild">
						<div data-v-6f74c2cb="" class="">
							<img data-v-6f74c2cb="" src=".././static/images/3.png"> <a
								data-v-6f74c2cb="" href="#peihu"><span
								data-v-6f74c2cb="">治疗陪护</span></a>
						</div>
					</div>
				</div>
			</div>
			<div data-v-6f74c2cb="" id="PackageList_content"
				class="PackageList_content">
				<!---->
				<a name="peizhen">
				<div data-v-6f74c2cb="" class="serveList">
					<div data-v-6f74c2cb="" class="serveType">
					
						<div data-v-6f74c2cb="" class="d_jump serveTitle">
							<h3 data-v-6f74c2cb="">护士陪诊</h3>
							<p data-v-6f74c2cb="">合理规划就诊流程，看病省心省力，陪伴亲如家人</p>
						</div>
						
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731160915744.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">成人陪诊&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">规划流程 节省时间</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731160628750.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">孕妇陪诊&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">省心省力 安心产检</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">198<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731160648328.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">老人陪诊&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">贴心陪伴 家人放心</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">268<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731160702121.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">儿童陪诊&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业沟通 拒绝慌乱</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">218<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
					</div>
				</div></a>
				<a name="huli">
				<div data-v-6f74c2cb="" class="serveList">
					<div data-v-6f74c2cb="" class="serveType">
						<div data-v-6f74c2cb="" class="d_jump serveTitle">
							<h3 data-v-6f74c2cb="">家庭护理</h3>
							<p data-v-6f74c2cb="">执业护士到家服务，操作规范，安全有保障</p>
						</div>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170813164104117.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">输液&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">上门输液 安全放心</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">198<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170913140537871.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">注射&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">上门注射 安全放心</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731174835631.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">胃管护理&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">更换胃管 口腔护理</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">238<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb=""class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731175313652.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">尿管护理&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">更换尿管 会阴擦洗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">238<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170728221835401.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">雾化&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">湿化气道 促进排痰</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731171125365.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">吸氧&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">纠正缺氧 通畅呼吸</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731174532025.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">压疮护理&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">保持清洁 预防感染</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731175013906.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">PICC换药&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">更换敷料 预防感染</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731171159942.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">深静脉换药&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">更换敷料 预防感染</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731175219438.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">鼻冲洗&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">湿化鼻腔 通畅呼吸</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20170731165027830.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">造口护理&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">更换敷料 保持清洁</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171208183015595.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">普通换药&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">伤口消毒 促进愈合</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171208183122430.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">灌肠&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">清洁肠道 促进排便</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">188<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
					</div>
				</div></a>
				<a name="peihu">
				<div data-v-6f74c2cb="" class="serveList">
					<div data-v-6f74c2cb="" class="serveType">
						<div data-v-6f74c2cb="" class="d_jump serveTitle">
							<h3 data-v-6f74c2cb="">治疗陪护</h3>
							<p data-v-6f74c2cb="">专业护士陪伴 解读护理常识 缓解病痛焦虑</p>
						</div>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107182916194.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">门诊手术陪护(4小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴手术</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">208<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107175331562.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">门诊手术陪护(8小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴手术</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">368<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107183222645.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">化疗陪护(4小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴化疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">208<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107180905855.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">化疗陪护(8小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴化疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">368<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107183548660.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">透析陪护(4小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴透析</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">208<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107181525967.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">透析陪护(8小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴透析</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">368<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107182553658.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">普通住院陪护(4小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴治疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">208<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107182736575.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">普通住院陪护(8小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴治疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">388<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107182015109.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">普通住院陪护(12小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴治疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">528<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107182015109.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">特需住院陪护(4小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴治疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">268<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107182329283.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">特需住院陪护(8小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴治疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">508<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
						<ul data-v-6f74c2cb="" class="ul2">
							<li data-v-6f74c2cb=""><div data-v-6f74c2cb=""
									class="iconContain">
									<img data-v-6f74c2cb=""
										src=".././static/index/setPhoto20171107182329283.png">
								</div>
								<div data-v-6f74c2cb="" class="orderInfo">
									<div data-v-6f74c2cb="" class="line_one">
										<h4 data-v-6f74c2cb="">特需住院陪护(12小时)&nbsp;&nbsp;&nbsp;&nbsp;</h4>
									</div>
									<div data-v-6f74c2cb="" class="line_two">
										<p data-v-6f74c2cb="">专业护士 陪伴治疗</p>
									</div>
									<div data-v-6f74c2cb="" class="line_three">
										<span data-v-6f74c2cb="" class="orderValue">688<span
											data-v-6f74c2cb="">&nbsp;元</span></span>
										<button data-v-6f74c2cb="">立即预约</button>
									</div>
								</div></li>
						</ul>
					</div>
				</div></a>
			</div>
			<div data-v-6f74c2cb="" class="P_Footer">
				<div class="p-footer-container">
					<div>
						<img src=".././static/packageFooter/ic_bianjie-.png">
						<h3>便捷</h3>
						<p>同诊就医 省时省心</p>
					</div>
					<div>
						<img src=".././static/packageFooter/ic_youzhi-.png">
						<h3>优质</h3>
						<p>专业护士 技能优越</p>
					</div>
					<div>
						<img src=".././static/packageFooter/ic_tiexin-.png">
						<h3>贴心</h3>
						<p>尽心尽力 暖心服务</p>
					</div>
					<div>
						<img src=".././static/packageFooter/ic_quanmian-.png">
						<h3>全面</h3>
						<p>快速响应 全面护理</p>
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
	<script type="text/javascript"
		src="https://api.map.baidu.com/api?v=2.0&amp;ak=eZRMaEOUkysATnOc9NP8Ayjp"></script>
	<script type="text/javascript"
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