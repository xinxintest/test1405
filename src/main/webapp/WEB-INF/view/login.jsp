<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
function login(){
		$.ajax({
			url:'${pageContext.request.contextPath}/user/login.do',
			type:'post',
			data:$("#fo1").serialize(),
			success:function(data){
				if(data=='1'){
					location.href="${pageContext.request.contextPath}/user/tolist.do";
				}else{
					alert("密码或用户名有误！");
				}
			},
			dataType:'text'
		});
	}
	
</script>
<script type="text/javascript" id="bd_soc_login_boot"></script>
<script type="text/javascript">
(function(){
  var t = new Date().getTime(),
      script = document.getElementById("bd_soc_login_boot"),
      redirect_uri = encodeURIComponent("http://127.0.0.1:8080/Student/user/otherLogin.do"),
      domid = "otherLogin",
      src = "http://openapi.baidu.com/social/oauth/2.0/connect/login?redirect_uri=" + redirect_uri + "&domid=" + domid + "&client_type=web&response_type=code&media_types=sinaweibo%2Cqqdenglu%2Cbaidu%2Cqqweibo%2Ckaixin%2Crenren&size=78x350&button_type=1&client_id=jLK9C6EGDdE3hE2G5K694PNg&view=embedded&t=" + t;
    script.src = src;
})();
</script>
  
</head>
<body>
<form class="form-horizontal" role="form" id="fo1">
   <div class="form-group">
      <label for="mail" class="col-sm-2 control-label">用户名/邮箱/手机号</label>
      <div class="col-sm-10">
         <input type="text" name="a" class="form-control" id="firstname" 
            placeholder="请输入用户名、邮箱、手机"  style="width: 300px;">
      </div>
   </div>
   <div class="form-group">
      <label for="password" class="col-sm-2 control-label">密码</label>
      <div class="col-sm-10">
         <input type="text" name="password" class="form-control" id="lastname" 
            placeholder="请输入密码"  style="width: 300px;">
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <button type="button" class="btn btn-default" onclick="login()">登录</button>
      </div>
   </div>
 </form>  
 <div id="otherLogin"></div>
</body>
</html>