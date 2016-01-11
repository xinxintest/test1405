<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="description"
	content="小米帐号能使用小米手机，MIUI，小米云，多看阅读，米聊，小米社区等小米服务。">
<meta name="keywords"
	content="小米帐号，小米账号，小米注册，注册，Mi Account，Sign in，小米，帐号，账号，小米帐户，登录，登陆，安全令

牌，动态口令，小米注册，找回密码">
<body class="en">
	<div class="wrapper">
		<div class="wrap">
			<div class="layout" id="layout">
				<!--表单输入登录-->
				<div class="mainbox" id="login-main">
					<div>
						<a class="ercode" id="qrcode-trigger" href="javascript:void(0)"></a>
					</div>
					<!-- header s -->
					<div class="lgnheader">
						<div class="header_tit t_c">
							<em id="custom_display_1" class="milogo"><canvas width="500"
									height="500" style="height: 50px; width: 

50px;"></canvas></em>
							<h4 class="header_tit_txt" id="login-title">小米帐号登录</h4>
							<div class=" site_info"></div>
						</div>
					</div>
					<!-- header e -->
					<div>
						<div class="login_area">
							<form action="/pass/serviceLoginAuth2" id="login-main-form">
								<div class="loginbox c_b">
									<!-- 输入框 -->
									<div class="lgn_inputbg c_b">
										<!--验证用户名-->
										<div class="single_imgarea" id="account-info">
											<div class="na-img-area" id="account-avator"
												style="display: none">
												<div class="na-img-bg-area" id="account-avator-con"></div>
											</div>
											<p class="us_name" id="account-displayname"></p>
											<p class="us_id"></p>
										</div>
										<label id="region-code" class="labelbox login_user c_b" for="">
											<div class="turn_area">
												<a class="btn_turn" id="manual_code"
													href="javascript:void(0);" title="关闭国家

码"></a>
											</div>
											<div class="country_list">
												<div class="animation countrycode_selector"
													id="countrycode_selector">
													<span class="country_code"><tt
															class="countrycode-value" id="countrycode_value"></tt><i
														class="icon_arrow_down"></i></span>
												</div>
											</div> <input class="item_account" autocomplete="off" type="text"
											name="user" id="username" placeholder="邮箱/手机号

码/小米帐号">
										</label>
										<div class="country-container" id="countrycode_container"
											style="display: none;"></div>
										<label class="labelbox c_b">
											<div></div> <input type="password" placeholder="密码"
											name="pwd" id="pwd">
										</label>
									</div>
									<div class="lgncode c_b" id="captcha"></div>
									<!-- 错误信息 -->
									<div class="err_tip" id="error-outcon">
										<div class="dis_box">
											<em class="icon_error"></em><span class="error-con"></span>
										</div>
									</div>
									<!-- 登录频繁 -->
									<div id="error-forbidden" class="err_forbidden">您的操作频率过快，请稍后再试。</div>
									<div class="btns_bg">
										<input class="btnadpt btn_orange" id="login-button" type="submit" value="立即登录"> 
											<a
											href="javascript:void(0)"
											class="btnadpt btn_fb sns-login-link" id="custom_display_8"
											data-type="facebook" style="display: none;"> <i
											class="iconfacebook"></i>
											<span>Facebook登录</span>
										</a>
									</div>
									<!-- 其他登录方式 s -->
									<div style="" class="other_login_type" id="custom_display_16">
										<fieldset class="oth_type_tit">
											<legend align="center" class="oth_type_txt">其他方式登录</legend>
										</fieldset>
										<div class="oth_type_links">
											<a class="icon_type icon_qq sns-login-link" data-type="qq"
												href="https://account.xiaomi.com/pass/sns/login/auth?appid=100284651&amp;callback=http%3A%2F%2Forder.mi.com%2Flogin%2Fcallback

%3Ffollowup%3Dhttp%253A%252F%252Fwww.mi.com%252F%26sign%3DNWU4MzRmNjBhZmU4MDRmNmZkYzVjMTZhMGVlMGFmMTllMGY0ZTNhZQ%2C

%2C&amp;sid=mi_eshop"
												title="QQ" target="_blank">QQ联合登录</a> <a
												class="icon_type icon_wb sns-login-link" data-type="weibo"
												href="https://account.xiaomi.com/pass/sns/login/auth?appid=2996826273&amp;callback=http%3A%2F%2Forder.mi.com%2Flogin%2Fcallback

%3Ffollowup%3Dhttp%253A%252F%252Fwww.mi.com%252F%26sign%3DNWU4MzRmNjBhZmU4MDRmNmZkYzVjMTZhMGVlMGFmMTllMGY0ZTNhZQ%2C

%2C&amp;sid=mi_eshop"
												title="新浪微博" target="_blank">Weibo联合登录</a> <a
												class="icon_type icon_zfb sns-login-link" data-type="alipay"
												href="https://account.xiaomi.com/pass/sns/login/auth?appid=2088011127562160&amp;callback=http%3A%2F%2Forder.mi.com%2Flogin%2Fcallback

%3Ffollowup%3Dhttp%253A%252F%252Fwww.mi.com%252F%26sign%3DNWU4MzRmNjBhZmU4MDRmNmZkYzVjMTZhMGVlMGFmMTllMGY0ZTNhZQ%2C

%2C&amp;sid=mi_eshop"
												title="支付宝" target="_blank">支付宝登录</a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- 其他登录方式 e -->
					<div class="n_links_area" id="custom_display_64">
						<a class="outer-link"
							href="https://account.xiaomi.com/pass/register?callback=http%3A%2F%2Forder.mi.com%2Flogin

%2Fcallback%3Ffollowup%3Dhttp%253A%252F%252Fwww.mi.com%252F%26sign%3DNWU4MzRmNjBhZmU4MDRmNmZkYzVjMTZhMGVlMGFmMTllMGY0ZTNhZQ%2C

%2C&amp;sid=mi_eshop">注册小米帐号</a><span>|</span>
						<a class="outer-link"
							href="https://account.xiaomi.com/pass/forgetPassword?callback=http%3A%2F%2Forder.mi.com%2Flogin

%2Fcallback%3Ffollowup%3Dhttp%253A%252F%252Fwww.mi.com%252F%26sign%3DNWU4MzRmNjBhZmU4MDRmNmZkYzVjMTZhMGVlMGFmMTllMGY0ZTNhZQ%2C

%2C&amp;sid=mi_eshop">忘记密码？</a>
					</div>
				</div>

				<div class="ercode_area" id="login-qrcode">
					<a class="code_close" href="javascript:void(0)" title="关闭"
						id="qrcode-close">关闭</a>
					<div class="ercode_box">
						<div class="code_hd">
							<h3 class="code_tit">小米帐号扫码登录</h3>
							<p>请使用最新版MIUI中“我的小米”进行扫码登录</p>
						</div>
						<div class="code_iframe">
							<iframe style="background: #fff;" src="about:blank" id="qriframe"
								frameborder="0" scrolling="no"></iframe>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div id="custom_display_4" class="n-footer">
		<div class="nf-link-area clearfix">
			<ul class="lang-select-list">
				<li><a href="javascript:void(0)" data-lang="zh_CN"
					class="lang-select-li current">简体</a>|</li>
				<li><a
					href="?callback=http%3A%2F%2Forder.mi.com%2Flogin%2Fcallback%3Ffollowup%3Dhttp%253A%252F%252Fwww.mi.com%252F%26sign

%3DNWU4MzRmNjBhZmU4MDRmNmZkYzVjMTZhMGVlMGFmMTllMGY0ZTNhZQ%2C%2C&amp;sid=mi_eshop&amp;_locale=zh_TW"
					data-lang="zh_TW" class="lang-

select-li">繁体</a>|</li>
				<li><a
					href="?callback=http%3A%2F%2Forder.mi.com%2Flogin%2Fcallback%3Ffollowup%3Dhttp%253A%252F%252Fwww.mi.com%252F%26sign

%3DNWU4MzRmNjBhZmU4MDRmNmZkYzVjMTZhMGVlMGFmMTllMGY0ZTNhZQ%2C%2C&amp;sid=mi_eshop&amp;_locale=en"
					data-lang="en" class="lang-select-

li">English</a>|</li>
				<li><a
					href="http://static.account.xiaomi.com/html/faq/faqList.html"
					target="_blank">常见问题</a></li>
			</ul>
		</div>
		<p class="nf-intro">
			<span>小米公司版权所有-京ICP备10046444-京公网安备1101080212535-京ICP证110507号</span>
		</p>
	</div>


	<style>
﻿html,body,h1,h2,h3,h4,h5,h6,blockquote,p,pre,dl,dd,ol,ul,li,a,span,caption,th,td,form,fieldset,legend,input,button,textarea,address
	{
	margin: 0;
	padding: 0
}

h1,h2,h3,h4,h5,h6 {
	font-size: 100%
}

ol,ul {
	list-style: none
}

li {
	list-style: none
}

fieldset,img {
	border: 0
}

address,cite,dfn,em,var {
	font-style: normal
}

code,kbd,pre,samp {
	font-family: courier new, courier, monospace
}

input,button,textarea,select {
	font-size: 100%
}

input,button,select,textarea {
	outline: 0
}

textarea {
	resize: none
}

table {
	border-collapse: collapse;
	border-spacing: 0;
	empty- cells: show;
	font-size: inherit
}

abbr[title] {
	border-bottom: 1px dotted;
	cursor: help
}

a,a:hover {
	text-decoration: none
}

a,label,:focus {
	outline: 0 none
}

a,img,input {
	border: 0 none
}

s {
	font-style: normal;
	text-decoration: none
}

body {
	font-size: 12px;
	font-family: arial," Hiragino Sans GB "," Microsoft YaHei "," WenQuanYi Micro Hei "," 微軟正黑體
		"," 儷黑 Pro ", sans-serif
}

button,input,select,textarea {
	font- family: arial, "Hiragino Sans GB", "Microsoft YaHei",
		"WenQuanYi Micro Hei", sans-serif
}

input::-moz-placeholder,textarea::-moz-placeholder {
	color: #3b3b3b;
	font-weight: normal
}

::-webkit-input-placeholder {
	color: #3b3b3b;
	font-weight: normal
}

input:-ms-input-placeholder {
	color: #3b3b3b;
	font-weight: normal
}

::-ms-clear {
	display: none
}

::-ms-reveal {
	display: none
}

.clearfix:after {
	display: block;
	content: "\20";
	height: 0;
	clear: both;
	overflow: hidden;
	visibility: hidden
}

.clearfix {
	*zoom: 1
}

input::-ms-clear {
	display: none
}

input::-ms-reveal {
	display: none
}

input:-webkit-autofill {
	-webkit-box-shadow: 0 0 0 1000px white inset
}

@media screen and (-ms-high- contrast:active) , ( -ms-high-contrast
	:none) {
	a {
		background-color: transparent
	}
}

input {
	background: 0;
	border: 0 none
}

input[type="button"],input

[type="submit"],input[type="reset"],a {
	-webkit-appearance: none;
	appearance: none
}

.fl {
	float: left
}

.fr {
	float: right
}

.nbg {
	background: none !

important
}

.t_l {
	text-align: left
}

.t_c {
	text-align: center
}

.t_r {
	text-align: right
}

.c_b:before,.c_b:after {
	content: "";
	display: block
}

.c_b:after {
	clear: both
}

.c_b {
	zoom: 1
}

.hidden,.hide {
	display: none
}

.hideimportant {
	display: none !

important
}

.underline {
	text-decoration: underline
}

input[type=text]::-ms-clear,input[type=password]::-ms-reveal {
	display: none
}

input {
	color: #333
}

input:required,input:invalid {
	-moz-box-shadow: none;
	box-shadow: none
}

input::-moz-focus-inner {
	border: 0
}

html,body {
	height: 100%
}

body {
	background: #f5f5f5;
	color: #757575
}

a {
	color: #757575
}

input {
	color: #333
}

::-webkit-input-placeholder {
	color: #9d9d9d
}

input:-ms-input-

placeholder {
	color: #9d9d9d
}

.milogo,.ercode,.icon_type,.iconfacebook,.btn_turn,.icon_arrow_down,.code_close,.btn_mod_close,.icon_error
	{
	background:
		url(https://account.xiaomi.com/static/res/e5c6b4e/account-static/respassport/acc-2014/img/sprite_login.png)
		no- repeat
}

.wrapper {
	width: 100%;
	min-height: 100%;
	height: auto;
	display: -webkit-box;
	display: box;
	display: -moz-box;
	display: -o-box;
	-webkit-box- align: center;
	-moz-box-align: center;
	-o-box-align: center;
	box-align: center;
	-webkit-box-pack: center;
	-moz-box-pack: center;
	-o-box- pack: center;
	box-pack: center
}

.wrap {
	padding-bottom: 80px;
	padding-top: 100px \9
}

@media screen and (min-width:0\0) {
	.wrap {
		padding- top: 100px
	}
}

.layout {
	background-color: #fff;
	width: 854px;
	margin: 0 auto 20px;
	position: relative;
	min-height: 620px
}

.mainbox {
	padding- bottom: 30px
}

.captcha_layout {
	min-height: 700px
}

.ercode {
	width: 68px;
	height: 68px;
	position: absolute;
	right: 0;
	top: 0
}

.ercode:hover,.ercode:focus {
	background-position: 0 -69px
}

.header_tit {
	padding: 50px 0 22px
}

.milogo {
	background-position: 0 -138px;
	width: 49px;
	height: 48px;
	margin: 0 auto;
	display: block
}

.header_tit_txt {
	font- size: 30px;
	color: #424242;
	font-weight: normal;
	padding-top: 22px
}

.lgn_inputbg {
	position: relative
}

.login_area {
	width: 358px;
	margin: 0 auto;
	padding-bottom: 20px
}

.labelbox {
	display: block;
	margin-bottom: 14px;
	padding: 0;
	border: 1px solid #e0e0e0
}

.labelbox input {
	width: 326px;
	height: 22px;
	line-height: 22px;
	padding: 13px 16px 13px 14px;
	display: block
}

.placehld {
	padding: 13px 16px 13px 14px
}

.country_list {
	cursor: pointer;
	display: none;
	float: left
}

.country_regin {
	max-width: 80px;
	overflow: hidden;
	white-space: nowrap;
	-webkit- text-overflow: ellipsis;
	-moz-text-overflow: ellipsis;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis
}

.item_account {
	float: left
}

.country_regin {
	margin-right: 8px
}

.country_code {
	padding-right: 12px;
	position: relative
}

.icon_arrow_down {
	width: 8px;
	height: 5px;
	position: absolute;
	top: 8px;
	right: 0;
	background-position: -102px -84px
}

.divflex .item_account {
	width: 270px
}

.turn_area {
	display: none;
	height: 11px;
	padding: 18px 0 18px 10px;
	float: left
}

.btn_turn {
	background-position: -102px- 

69px;
	width: 11px;
	height: 11px;
	display: block
}

.turn_off {
	display: none
}

.add_regioncode .item_account {
	width: 220px
}

.add_regioncode 

.country_list {
	height: 22px;
	line-height: 22px;
	padding: 13px 10px 13px 0;
	margin-left: 10px;
	color: #333;
	border-right: 1px solid #e0e0e0;
	display: block;
	overflow: hidden;
	position: relative
}

.add_regioncode .country_list span {
	display: inline-block;
	vertical- align: middle
}

.add_regioncode .turn_area {
	display: block
}

.add_regioncode .animation {
	position: relative;
	-webkit-animation: fade-in ease-in- out .5s;
	animation-name: fade-in;
	animation-timing-function: ease-in-out;
	animation-duration: .5s
}

@media screen and (-webkit-min-device- pixel-ratio:0) {
	.login_user {
		display: -webkit-box;
		display: box
	}
	.turn_area,.country_list,.item_account {
		float: none
	}
	.item_account {
		-webkit- box-flex: 1;
		box-flex: 1
	}
}

.input_normal {
	width: 100%
}

.lgncode {
	padding-bottom: 14px
}

.code_label {
	float: left;
	width: 190px;
	margin- bottom: 0;
	padding: 0 14px 0 16px
}

.code_label .code {
	width: 100%;
	padding: 13px 0
}

.code_label .placehld {
	padding: 13px 0
}

.chkcode_img {
	margin- left: 10px;
	cursor: pointer
}

.btns_bg {
	padding-top: 10px;
	padding-bottom: 15px
}

.btnadpt {
	width: 100%;
	height: 50px;
	line- height: 50px;
	display: block;
	margin-bottom: 14px;
	text-align: center;
	font-size: 14px;
	color: #fff;
	cursor: pointer
}

.btn_orange {
	background- color: #ef5b00
}

.btn_fb {
	background-color: #3a5897
}

.iconfacebook {
	background-position: -102px -38px;
	width: 18px;
	height: 18px;
	margin- right: 10px;
	display: inline-block;
	vertical-align: middle
}

.oth_type_tit {
	border-top: 1px solid #e0e0e0;
	padding-top: 10px
}

.oth_type_txt {
	font- size: 14px;
	color: #b0b0b0;
	padding: 0 25px;
	margin: 0 auto
}

.oth_type_links {
	padding-top: 10px;
	text-align: center
}

.icon_type {
	width: 30px;
	height: 30px;
	margin: 0 12px;
	display: inline-block;
	text-indent: -9999px;
	-webkit-filter: grayscale(100%);
	-moz-filter: grayscale(100%);
	-ms-filter: grayscale(100%);
	-o-filter: grayscale(100%);
	filter: grayscale(100%);
	filter: url(https://account.xiaomi.com/static/res/e5c6b4e/account-static/respassport/acc-2014/sass/gray.svg
		#grayscale)
}

.icon_type:hover {
	-webkit- filter: grayscale(0);
	-moz-filter: grayscale(0);
	-ms-filter: grayscale(0);
	-o-filter: grayscale(0);
	filter: grayscale(0);
	filter: none
}

.icon_qq {
	background-position: -69px 0
}

.icon_wb {
	background-position: -102px 0
}

.icon_zfb {
	background-position: -69px -38px
}

.n_links_area {
	padding- top: 30px;
	text-align: center;
	color: #e0e0e0
}

.n_links_area a {
	padding: 0 9px;
	font-size: 14px
}

.n_links_area a:hover {
	color: #ff6700
}

.site_info {
	padding-top: 10px
}

.site_info_txt {
	color: #ff6700
}

.site_info_link {
	padding: 0 5px
}

.country-container {
	width: 356px;
	background: #fff;
	height: 168px;
	line-height: 30px;
	border: 1px solid #e8e8e8;
	overflow-x: hidden;
	overflow- y: auto;
	position: absolute;
	left: 0;
	top: 51px;
	z-index: 98;
	display: none
}

#select_country_code {
	float: right;
	cursor: pointer
}

.btn_commom_cancel {
	display: none
}

.country-code .header {
	background: #eaeaea;
	padding-left: 10px
}

.country-code .record {
	padding: 0 10px;
	clear: both;
	overflow: hidden;
	cursor: pointer
}

.country-code .record:hover {
	background: #eaeaea
}

.country-code .record span {
	height: 30px;
	overflow: hidden
}

.country-code .record-country {
	float: left;
	max-width: 74%;
	cursor: pointer
}

.country-code .record-code {
	float: right;
	max-width: 20%
}

.n-footer {
	height: 80px;
	margin-top: -80px;
	line-height: 1.5;
	text-align: center
}

.nf-intro {
	padding: 10px
}

.nf-link-

area {
	text-align: center
}

.nf-link-area li {
	display: inline-block;
	*display: inline;
	*zoom: 1
}

.nf-link-area a {
	display: inline- block;
	*display: inline;
	*zoom: 1;
	padding: 0 10px;
	color: #757575
}

.nf-link-area a:hover,.nf-link-area a.current {
	color: #333
}

.faq_link a {
	padding: 0 10px
}

.ercode_area {
	background-color: #fff;
	width: 854px;
	margin: 0 auto;
	display: none;
	position: relative;
	z-index: 98
}

.ercode_box {
	width: 400px;
	height: 400px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-top: -200px;
	margin-left: -200px
}

.code_close {
	background-position: - 69px -69px;
	width: 30px;
	height: 30px;
	position: absolute;
	right: 20px;
	top: 20px;
	text-indent: -9999px
}

.code_hd {
	padding-bottom: 50px;
	text- align: center
}

.code_tit {
	font-size: 30px;
	color: #ff6700;
	font-weight: normal;
	padding-bottom: 10px
}

.code_iframe {
	text- align: center
}

.ercode_container {
	background: #fff
}

.na-img-area {
	width: 80px;
	height: 80px;
	border: 2px solid #e3e3e3;
	border- radius: 50%;
	padding: 4px;
	background: #fff;
	position: relative;
	z-index: 4;
	margin: 0 auto
}

.na-img-bg-area {
	background: url(https://account.xiaomi.com/static/res/7c3e9b0/passport/acc-2014/img/n-avator-bg.png)
		0 0 no-repeat;
	width: 100%;
	height: 100%;
	border- radius: 50%;
	overflow: hidden
}

.na-img-area img {
	display: block;
	width: 100%;
	height: 100%;
	border-radius: 50%
}

.single_imgarea {
	text- align: center;
	line-height: 20px;
	font-size: 14px;
	color: #333
}

.single_imgarea .us_name {
	padding-top: 10px
}

.single_imgarea,.confirm_con {
	line- height: 20px;
	font-size: 14px;
	color: #333
}

.confirm_con {
	padding-top: 15px
}

.confirm_con .txt {
	padding-bottom: 5px
}

@
-moz-document url-prefix () { .
	add_regioncode {width: 100%;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

}
.msk {
	width: 100%;
	height: 100%;
	background: #000;
	position: absolute;
	left: 0;
	top: 0;
	display: none;
	opacity: .4;
	filter: alpha(opacity = 40)
}

.err_tip {
	margin-bottom: 5px;
	line-height: 20px;
	color: #f56700;
	display: none
}

.icon_error {
	background-position: -69px -109px
}

.icon_error {
	width: 14px;
	height: 14px;
	margin: -1px 5px 0 0;
	overflow: hidden;
	display: inline-block;
	vertical-align: middle
}

.err_tip span {
	vertical- align: middle
}

.err_forbidden {
	padding: 10px;
	border: 1px solid #e0e0e0;
	line- height: 1.5;
	background: #f5f5f5;
	color: #ff6700;
	display: none
}

.error_bg {
	border: 1px solid #f56700 !important
}

@media only screen and (max- width:850px) {
	.layout {
		width: 100%;
		min-width: 400px;
		min-height: 480px
	}
	.mainbox {
		padding-bottom: 15px
	}
	.header_tit {
		padding: 25px 0 0
	}
	.header_tit_txt {
		font-size: 22px;
		padding-top: 15px
	}
	.btns_bg {
		padding-bottom: 10px;
		padding-top: 10px
	}
	.oth_type_links {
		padding- top: 5px
	}
	.n_links_area {
		padding-top: 0
	}
}

@
-webkit-keyframes fade-in {
	from {left: -100%
}

to {
	left: 0
}

}
@
-moz-keyframes fade-in {
	from {left: -100%
}

to {
	left: 0
}

}
@
-o-keyframes fade-in {
	from {left: -100%
}

to {
	left: 0
}

}
@
keyframes fade-in {
	from {left: -100%
}

to {
	left: 0
}

}
.show_more_lang {
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 3px;
	cursor: pointer;
	margin-right: 10px;
	padding: 0 5px
}

.modal_container {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 100;
	width: 100%;
	height: 100%
}

.modal_msk {
	background: #000;
	width: 100%;
	height: 100%;
	opacity: .4;
	filter: alpha(opacity = 40);
	position: absolute;
	left: 0;
	top: 0
}

.modal_tip {
	background: #fff;
	margin: 0 auto;
	padding: 0 14px;
	line-height: 30px;
	border: 6px solid #838383;
	border: 6px solid #d1d1d1 \9;
	-webkit-border- radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	color: #666;
	position: fixed
}

:root .modal_tip {
	border: 6px solid #838383
}

.modal_tip_hd {
	height: 42px;
	padding-top: 13px;
	line-height: 42px;
	border-bottom: 1px solid #e6e6e6;
	position: relative
}

.modal_tip_title {
	color: #1e1e1e;
	font-size: 15px;
	font-weight: bold;
	padding: 0 20px
}

.btn_mod_close {
	width: 22px;
	height: 22px;
	overflow: hidden;
	position: absolute;
	top: 7px;
	right: -7px;
	background-position: -102px- 

109px;
	_cursor: pointer
}

.btn_mod_close span {
	display: none
}

.more-lang-modal {
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -150px
}

.more-

lang-modal {
	width: 400px;
	height: 300px
}

.lang_items_list {
	padding: 10px 10px 0
}

.lang_items_list li {
	float: left;
	width: 50%;
	line- height: 20px;
	padding: 5px 0
}

.lang_items_list a {
	color: #46639c
}

.lang_items_list a:hover,.lang_items_list .current {
	color: #0600fb
}

.external_logo_area {
	display: none
}
</style>
<a target="_blank"></a>
</body>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>小米帐号 - 登录</title>
</head>
</html>