<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
<title>小米帐号 - 注册</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="https://account.xiaomi.com/static/res/090c973/account-static/respassport/acc-2014/css/reset.css">
<link type="text/css" rel="stylesheet" href="https://account.xiaomi.com/static/res/6bca795/account-static/respassport/acc-2014/css/layout.css">
<link type="text/css" rel="stylesheet" href="https://account.xiaomi.com/static/res/d2a43d8/account-static/respassport/acc-2014/css/registerpwd.css">
<script type="text/javascript">
	$(function(){
		$("#fo1").submit(function(e){
			e.preventDefault();
			$.post("<%=request.getContextPath()%>/user/zhuce.do" , $(this).serialize() , function(){
				alert("保存成功");
				location.href="<%=request.getContextPath()%>/user/toshou.do";
			});
		});
	});
</script>	
<style>
.facebook_area{
  display:none!important;
}
</style>
</head>
<body class="zh_CN">
<div class="wrapper">
<div class="wrap">
<div class="layout">
  <div class="n-frame device-frame reg_frame" id="main_container">
    <div class="external_logo_area"><a class="milogo" href="javascript:void(0)"></a></div>
    <div class="title-item t_c">
      <h4 class="title_big30">注册家家乐帐号</h4>          
    </div>  
  </div>
 <div>
<form class="form-horizontal" role="form" id="fo1">
 	<div class="form-group">
      <label for="phone" class="col-sm-2 control-label">手机号</label>
      <div class="col-sm-10">
         <input type="text" name="loginname" class="form-control" id="firstname" readonly="readonly" value="${loginname}"
           style="width: 400px;">
      </div>
    </div>
   <div class="form-group">
      <label for="phone" class="col-sm-2 control-label">手机号</label>
      <div class="col-sm-10">
         <input type="text" name="phone" class="form-control" id="firstname" 
            placeholder="请输入手机" style="width: 400px;">
      </div>
   </div>
   <div class="form-group">
      <label for="mail" class="col-sm-2 control-label">邮箱</label>
      <div class="col-sm-10">
         <input type="text" name="mail" class="form-control" id="firstname" 
            placeholder="请输入邮箱"  style="width: 400px;">
      </div>
   </div>
   <div class="form-group">
      <label for="password" class="col-sm-2 control-label">密码</label>
      <div class="col-sm-10">
         <input type="text" name="password" class="form-control" id="lastname" 
            placeholder="请输入密码"  style="width: 400px;">
      </div>
   </div>
   <div class="form-group">
      <label for="phone" class="col-sm-2 control-label">你懂吗</label>
      <div class="col-sm-10">
         <input type="text" name="socialUid" class="form-control" id="firstname" readonly="readonly" value="${socialUid}"
           style="width: 400px;">
      </div>
    </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <button type="submit" class="btn btn-default">确定</button>
      </div>
   </div>
 </form>  
 </div>
</div>
</div>
</div>
<div class="n-footer">
  <div class="nf-link-area clearfix">
  <ul class="lang-select-list">
    <li><a href="javascript:void(0)" data-lang="zh_CN">简体</a>|</li>
    <li><a href="javascript:void(0)" data-lang="zh_TW">繁体</a>|</li>
    <li><a href="javascript:void(0)" data-lang="en">English</a></li>
    
      |<li><a class="a_critical" href="http://static.account.xiaomi.com/html/faq/faqList.html" target="_blank"><em></em>常见问题</a></li>
    
  </ul>
  </div>
  <p class="nf-intro"><span>小米公司版权所有-京ICP备10046444-京公网安备1101080212535-京ICP证110507号</span></p>
</div>
<script src="https://account.xiaomi.com/static/res/6941994/passport/scripts/jquery-1.8.3.min.js"></script>
<script src="https://account.xiaomi.com/static/res/64371/scripts/common/more/placeholder.js"></script>

<script>
$(function(){
  //语言部分
  var locale="zh_CN";
  if(locale!=='zh_CN' && locale!=='zh_TW' && locale!=='en'){
    locale=locale.indexOf("zh")!==-1?"zh_TW":"en";
  }
  var list=$(".lang-select-list a");
  list.each(function(index,item){
    if($(this).data("lang")===locale){
      $(this).addClass("current");
    }
  });
  list.bind("click",function(){
    var selectLocale=$(this).data("lang");
    var params=location.search.substring(1).split("&");
    if(locale!==selectLocale){
      for(var i=0;i<params.length;i++){
        if(params[i].indexOf("_locale=")===0){
          params.splice(i,1);i--;
        }
      }
      params.push("_locale="+selectLocale);
      location.href=("//"+location.host+location.pathname+"?"+params.join("&")+location.hash);
    }
  });
});
</script>

<script src="https://account.xiaomi.com/static/res/a5c6f21/account-static/scripts/tool/countryCode.js">
</script>
</body>
</html>