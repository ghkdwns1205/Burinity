<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"  href="css/Myproject.css">
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
 <script>

$(document).ready(function () {
// 아이디비번 호버
$('.sec2 .inner .serchid').hover(function(){
    $('.sec2 .inner ul .serchid .show1').stop().show(1000);
    
}, function(){
    $('.sec2 .inner ul .serchid .show1').stop().hide(1000);
});

// 소셜네트워크 호버
$('.sec2 .inner .social').hover(function(){
    $('.sec2 .inner ul .social .show2').stop().show(1000);
    
}, function(){
    $('.sec2 .inner ul .social .show2').stop().hide(1000);
});


})

</script>
<body>
    <div class="wrap">

        <!-- <div>
            <a href="www.naver.com"><img src="/naverimg.jpg" alt=""></a>

        </div> -->
    <header>
        <div class="inner">
        
             <div class="headertop">
                  <a href="index"><input type="button" value="<s:message code="common.btnMain" />"></a>
                
            </div>
             
            <div class="banner">
                <h1><span class="burin"><s:message code="common.banner1"/></span><s:message code="common.banner2"/> </h1>
                <h3><s:message code="common.banner3"/></h3>
                
            </div>
        </div>
    </header>
    <section class="sec1">
    <form action="UserLoginCheck">
        <div class="inner">
            <div class="login">
            <div class="loginid"><s:message code="input.loginID"/> : <input type="text" class="logid" name="userid" placeholder="아이디를 입력해주세요"></div><br>
            <div><s:message code="input.loginPass"/> : <input type="password" class="logpass" name="userpass" placeholder="비밀번호를 입력해주세요"></div>
            </div>
            <div class="button"><input type="submit" value="<s:message code="submit.login"/>" ></div>
        </div>
        </form>
    </section>
    <section class="sec2">
        <div class="inner">
            <ul>
                  <li class="serchid">아이디/비밀번호 찾기 ▼
                    <ul class="ulfont show1">
                       <li><a href="">아이디 찾기</a></li>
                       <li><a href="">비밀번호 찾기</a></li>
                    </ul>
                </li>
                 <li><a href="userJoin">회원가입</a></li>
                <li class="social">소셜계정 로그인 ▼
                    <ul class="ulfont show2">
                       <li><a href="${apiURL}">네이버 로그인</a></li>
                       <li><a href="">카카오톡 로그인</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </section>
    </div>
</body>
</html>