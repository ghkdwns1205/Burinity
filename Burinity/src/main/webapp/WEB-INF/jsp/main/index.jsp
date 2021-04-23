<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
 <c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Myproject.css">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	 <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

	 <script>
  		  $(document).ready(function(){
   		   $('.slider').bxSlider();
   			 });
	 </script>
 
 	<script>
      		  $(document).ready(function(){

      			$("input[type='checkbox']").on("click",function(){
      				let count = $("input:checked[type='checkbox']").length;
      			
      					if(count > 3){
      						$(this).prop("checked",false);
      						alert("3개까지만 선택할 수 있습니다.");
      					}
      			});
      			
      			  
      			  
            	$('.area').click(function(){
             	$('.allArea').stop().fadeToggle(1000);
          		  });
            	
            	
            	 $('.seoul').click(function(){
                     $('.SeoulChoice').show();
                     $('.BusanChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.InchunChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.kyunggi').click(function(){
            		 
                     $('.KyunggiChoice').show();
                     $('.UlsanChoice').hide();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.InchunChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.busan').click(function(){
                     $('.BusanChoice').show();
                     $('.SeoulChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.InchunChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.ulsan').click(function(){
                     $('.UlsanChoice').show();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.InchunChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.daegu').click(function(){
                     $('.DaeguChoice').show();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.InchunChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.gwangju').click(function(){
                     $('.GwangjuChoice').show();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.InchunChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.inchun').click(function(){
                     $('.InchunChoice').show();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.daejun').click(function(){
                     $('.DaejunChoice').show();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.InchunChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.kangwon').click(function(){
                     $('.KangwonChoice').show();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.InchunChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.DaejunChoice').hide();
                     $('.JejuChoice').hide();
                 });
            	 
            	 $('.jeju').click(function(){
                     $('.JejuChoice').show();
                     $('.BusanChoice').hide();
                     $('.SeoulChoice').hide();
                     $('.KyunggiChoice').hide();
                     $('.DaeguChoice').hide();
                     $('.UlsanChoice').hide();
                     $('.InchunChoice').hide();
                     $('.GwangjuChoice').hide();
                     $('.KangwonChoice').hide();
                     $('.DaejunChoice').hide();
                 });
            	 
            	
            	
            	
            	
        	})
    </script>
    
<%--    <script> 
         $(function(){
             $('.tabArea li').click(function(){
                 var index = $(this).index();
                 $('.tabArea > li').removeClass('SeoulChoice')
                 $('.tabArea > li').eq(index).addClass('SeoulChoice')
                 $('.jiyuk > div').removeClass('SeoulChoice')
                $('.jiyuk > div').eq(index).addClass('SeoulChoice')
            })
        })
     </script> --%>
  
</head>

<body>
    
    <div class="wrap">

        <!--asdf <div>
            <a href="www.naver.com"><img src="/naverimg.jpg" alt=""></a>

        </div> -->
    <header>
        <div class="inner">
           
            <div class="headertop">
            
                 <c:if test="${empty sessionScope.userid}">
                     <a href="userLogin"><input type="button" value="<s:message code="common.btnLogin"/>" class="headlogin"></a>
                  	 <a href="userJoin"><input type="button" value="<s:message code="common.btnJoin"/>" class="headsignup"></a>
                 </c:if>
                  
                 <c:if test="${sessionScope.authority==1}">
                  	  <a href="bunyangUpdate"><input type="button" value="<s:message code="common.btnBunyang"/>" class="headlogin"></a>
                 	  <a href="userLogout"><input type="button" value="<s:message code="common.btnLogout"/>" class="headlogout"></a>
                 </c:if>
                 
                 <c:if test="${sessionScope.authority==0 and not empty sessionScope.userid}">
                 	  <a href="userLogout"><input type="button" value="<s:message code="common.btnLogout"/>" class="headlogout"></a>
                 </c:if>
                  
             </div>

            <a href="index.jsp">
            <div class="banner">
                <h1><span class="burin"><s:message code="common.banner1"/></span><s:message code="common.banner2"/> </h1>
                <h3><s:message code="common.banner3"/></h3>
            </div>
            </a>
            
            
        </div>
    </header>

    <nav class="menubar">
        <div class="inner">
             <ul>
                <li><s:message code="common.menubar1"/></li>
                <li><s:message code="common.menubar2"/></li>
                <a href="imgboard"><li><s:message code="common.menubar3"/></li></a>
                <a href="freeboard"><li><s:message code="common.menubar4"/></li></a>
                <li><s:message code="common.menubar5"/></li>
             </ul>
         </div>
    </nav>

	<section class="bunyang">
		<div class="inner">
			
			<h2 class="mainH2">분양정보 보기</h2>
			
			<div class="divAreaBtn">
			<button class="area" type="button">
			<span><s:message code="common.btnAreaChoice"/></span>
			</button>		
			</div>
			
			<div class="allArea">
			<div class="areaChoice">
				<ul class="tabArea">
					<li><button class="showBtn seoul" type="button">
					서울
					</button></li>
					<li><button class="selectBtn kyunggi" type="button">
					경기
					</button></li>
					<li><button class="selectBtn busan" type="button">
					부산
					</button></li>
					<li><button class="selectBtn ulsan" type="button">
					울산
					</button></li>
					<li><button class="selectBtn daegu" type="button">
					대구
					</button></li>
					<li><button class="selectBtn gwangju" type="button">
					광주
					</button></li>
					<li><button class="selectBtn inchun" type="button">
					인천
					</button></li>
					<li><button class="selectBtn daejun" type="button">
					대전
					</button></li>
					<li><button class="selectBtn kangwon" type="button">
					강원
					</button></li>
					<li><button class="selectBtn jeju" type="button">
					제주
					</button></li>
				</ul>
			</div>
			
			<div class="jiyuk">
			<form action="jiyukSearch">
			
			
			<div class="SeoulChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="2000">
						<span>서울전체</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2001">
						<span>강남구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2002">
						<span>강동구</span>
					</li>
					<li>
					    <input type="checkbox" name="jiyuk[]" value="2003">
						<span>강북구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2004">
						<span>강서구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2005">
						<span>관악구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2006">
						<span>광진구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2007">
						<span>구로구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2008">
						<span>금천구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2009">
						<span>노원구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2010">
						<span>도봉구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2011">
						<span>동대문구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2012">
						<span>동작구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2013">
						<span>마포구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2014">
						<span>서대문구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2015">
						<span>서초구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2016">
						<span>성동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2017">
						<span>성북구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2018">
						<span>송파구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2019">
						<span>양천구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2020">
						<span>영등포구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2021">
						<span>용산구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2022">
						<span>은평구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2023">
						<span>종로구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2024">
						<span>중구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="2025">
						<span>중랑구</span>
					</li>
				</ul>
				
			</div>
			
			<div class="KyunggiChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="3000">
						<span>경기전체</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3001">
						<span>가평군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3002">
						<span>고양시</span>
					</li>
					<li>
					    <input type="checkbox" name="jiyuk[]" value="3003">
						<span>과천시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3004">
						<span>광명시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3005">
						<span>광주시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3006">
						<span>구리시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3007">
						<span>군포시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3008">
						<span>김포시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3009">
						<span>남양주시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3010">
						<span>동두천시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3011">
						<span>부천시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3012">
						<span>성남시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3013">
						<span>수원시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3014">
						<span>시흥시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3015">
						<span>안산시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3016">
						<span>안성시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3017">
						<span>안양시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3018">
						<span>양주시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3019">
						<span>양평군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3020">
						<span>여주시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3021">
						<span>연천군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3022">
						<span>오산시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3023">
						<span>용인시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3024">
						<span>의왕시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3025">
						<span>의정부시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3026">
						<span>이천시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3027">
						<span>파주시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3028">
						<span>평택시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3029">
						<span>포천시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3030">
						<span>하남시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="3031">
						<span>화성시</span>
					</li>
				</ul>
			</div>
			
			<div class="BusanChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="1000">
						<span>부산전체</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1001">
						<span>강서구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1002">
						<span>금정구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1003">
						<span>기장군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1004">
						<span>남구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1005">
						<span>동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1006">
						<span>동래구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1007">
						<span>부산진구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1008">
						<span>북구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1009">
						<span>사상구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1010">
						<span>사하구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1011">
						<span>서구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1012">
						<span>수영구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1013">
						<span>연제구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1014">
						<span>영도구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1015">
						<span>중구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="1016">
						<span>해운대구</span>
					</li>
				</ul>
				
			</div>
			
			<div class="UlsanChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="4000">
						<span>울산전체</span>
					</li>
					<li>
						<input type="checkbox"name="jiyuk[]" value="4001">
						<span>남구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4002">
						<span>동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4003">
						<span>북구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4004">
						<span>울주군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4005">
						<span>중구</span>
					</li>
				</ul>
				
			</div>
			
			<div class="DaeguChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="5000">
						<span>대구전체</span>
					</li>
					<li>
						<input type="checkbox"name="jiyuk[]" value="5001">
						<span>남구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="5002">
						<span>달서구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="5003">
						<span>달성군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="5004">
						<span>동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="5005">
						<span>북구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="5006">
						<span>서구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="5007">
						<span>수성구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="5008">
						<span>중구</span>
					</li>
				</ul>
				
			</div>
			
			<div class="GwangjuChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="7000">
						<span>광주전체</span>
					</li>
					<li>
						<input type="checkbox"name="jiyuk[]" value="7001">
						<span>광산구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="7002">
						<span>남구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="7003">
						<span>동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="7004">
						<span>북구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="7005">
						<span>서구</span>
					</li>
				</ul>
				
			</div>
			
			<div class="InchunChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="8000">
						<span>인천전체</span>
					</li>
					<li>
						<input type="checkbox"name="jiyuk[]" value="8001">
						<span>강화군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8002">
						<span>계양구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8003">
						<span>남동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8004">
						<span>동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8005">
						<span>미추홀구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8006">
						<span>부평구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8007">
						<span>서구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8008">
						<span>연수구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8009">
						<span>옹진군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="8010">
						<span>중구</span>
					</li>
				</ul>
				
			</div>
			
			<div class="DaejunChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="4000">
						<span>대전전체</span>
					</li>
					<li>
						<input type="checkbox"name="jiyuk[]" value="4001">
						<span>대덕구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4002">
						<span>동구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4003">
						<span>서구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4004">
						<span>유성구</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="4005">
						<span>중구</span>
					</li>
				</ul>
				
			</div>
			
			<div class="KangwonChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="9000">
						<span>강원전체</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9001">
						<span>강릉시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9002">
						<span>고성군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9003">
						<span>동해시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9004">
						<span>삼척시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9005">
						<span>속초시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9006">
						<span>양구군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9007">
						<span>양양군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9008">
						<span>영월군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9009">
						<span>원주시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9010">
						<span>인제군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9011">
						<span>정선군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9012">
						<span>철원군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9013">
						<span>춘천시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9014">
						<span>태백시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9015">
						<span>평창군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9016">
						<span>홍천군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9017">
						<span>화천군</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="9018">
						<span>횡성군</span>
					</li>
				</ul>
				
			</div>
			
			<div class="JejuChoice">
				<ul>
					<li>
						<input type="checkbox" name="allJiyuk[]" value="10000">
						<span>제주전체</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="10001">
						<span>서귀포시</span>
					</li>
					<li>
						<input type="checkbox" name="jiyuk[]" value="10002">
						<span>제주시</span>
					</li>
					
				</ul>
				
			</div>
			
			
			
			<input class="resetChoice" type="reset" value="선택취소">
			<input class="jiyukSearch" type="submit" value="검색하기">
			
			</form>
			</div>
			</div>
			
		
		</div>
	</section>


	
	<section class="bycalendar">
		<div class="inner">
		
		
		<c:if test="${list!=null }">
	<table>
		<c:forEach var="list" items="${list}">
			<tr>
				<td class="ekswlaud"><a href="bunyanInfo?apartmentName=${list.apartmentName}&productType=${list.productType}">${list.apartmentName}</a></td>
				<td class="tkdjqeksrP">${list.businessStage}</td>		
			</tr>
		</c:forEach>
	</table>
		</c:if>
		
		
		</div>
	</section>


	
	
    <section class="mainsection">
        <div class="inner">
            <div class="maincont">
         
            <div class="slider">
   				 <a href="http://demer.lottecastle.co.kr/"><img src="${root}/img/dmere1.jpg" alt="드메르"></a>
  			     <a href="http://allak.switzen.com/complex.html"><img src="${root}/img/swichen.jpg" alt="안락스위첸"></a>
   				 <a href="http://www.yeonsan-fore.co.kr/sub01_01.html"><img src="${root}/img/stahills.png" alt="연산서희스타힐스"></a>
   			
			</div>

        </div>
        </div>
    </section>

    <footer>
         <div class="inner">
            <div class="footdiv">
            <h2><s:message code="common.adver"/></h2>
            </div> 
        </div>
    </footer>
    </div>
</body>
</html>