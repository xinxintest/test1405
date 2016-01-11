<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.1.js"></script>
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
 <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<%-- <div id="myCarousel" class="carousel slide" >
<!--    轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
   </ol>   
<!--    轮播（Carousel）项目 -->
	  <div class="carousel-inner">
	      <div class="item active">
	         <img src="<%=request.getContextPath()%>/img/3cdde2bc1bcb44a6bbc9804dacab95e3.jpg" alt="First slide">
	      </div>
	      <div class="item">
	         <img src="<%=request.getContextPath()%>/img/b49809c471ea49d596e83771f57e58f2.jpg" alt="Second slide">
	      </div>
	      <div class="item">
	         <img src="<%=request.getContextPath()%>/img/e8613723980846338b755d78966876a9.jpg" alt="Third slide">
	      </div>
	      <div class="item">
	         <img src="<%=request.getContextPath()%>/img/ef032e6727654d09a84922e1cbb55282.jpg" alt="Four slide">
	      </div>
	      <div class="item">
	         <img src="<%=request.getContextPath()%>/img/efd81cb149e745ab8dd6ee3150ce11a8.jpg" alt="Five slide">
	      </div>
	   </div>
<!-- 	   轮播（Carousel）导航 -->
	   <a class="carousel-control left" href="#myCarousel" 
	      data-slide="prev">&lsaquo;</a>
	   <a class="carousel-control right" href="#myCarousel" 
	      data-slide="next">&rsaquo;</a>
</div> --%>

<div id="myCarousel" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="<%=request.getContextPath()%>/img/3cdde2bc1bcb44a6bbc9804dacab95e3.jpg" alt="First slide">
      </div>
      <div class="item">
         <img src="<%=request.getContextPath()%>/img/efd81cb149e745ab8dd6ee3150ce11a8.jpg" alt="Second slide">
      </div>
      <div class="item">
         <img src="<%=request.getContextPath()%>/img/ef032e6727654d09a84922e1cbb55282.jpg" alt="Third slide">
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 

</body>
</html>