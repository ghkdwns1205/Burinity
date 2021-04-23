<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri ="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "fn" uri ="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Myproject.css">
</head>
<body>
  <div class="wrap">

        <!-- <div>
            <a href="www.naver.com"><img src="/naverimg.jpg" alt=""></a>

        </div> -->
    <header>
        <div class="inner">
           
            <div class="headertop">
                <c:if test="${empty sessionScope.userid}">
                <a href="login"><input type="button" value="<s:message code="common.btnLogin"/>" class="headlogin"></a>
<!--                   <a href="logout"><input type="button" value="로그아웃" class="headlogout"></a> -->
                  <a href="join"><input type="button" value="<s:message code="common.btnJoin"/>" class="headsignup"></a>
                  </c:if>
                  
                   <c:if test="${not empty sessionScope.userid}">
<!--                 <a href="login"><input type="button" value="로그인" class="headlogin"></a> -->
                  <a href="logout"><input type="button" value="<s:message code="common.btnLogout"/>" class="headlogout"></a>
<!--                   <a href="join"><input type="button" value="회원가입" class="headsignup"></a> -->
                  </c:if>
             </div>

            <a href="index.jsp"><div class="banner">
                <h1><span class="burin"><s:message code="common.banner1"/></span><s:message code="common.banner2"/></h1>
                <h3><s:message code="common.banner3"/></h3>
                
            </div></a>
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

<section class="mainsection">
    <div class="inner">
        <div class="writesection">
            <form method="post" action="writeEnd">    
            <div class="writechoice">
                     <span>게시판 선택 : </span>
                     <select  name="table" >
                        <option class="writeopt" value="freeboard">부동산 뉴스모음</option>
                        <option class="writeopt" value="freeboard">묻고 답하기</option>
                        <option class="writeopt" value="freeboard">자유게시판</option>
                     </select>
             </div>

            <div class="writetitle">
                <span><s:message code="board.title"/> : </span>
                <input type="text" name="title">
            </div>

            <div class="writetextarea">
                <textarea cols="30px" name="content"></textarea>
            </div>
            <input type="hidden" name="nickname" value="${sessionScope.userid}">
            <div class="finishwriter"><input type="submit" value="<s:message code="board.writeEnd"/>"></div>
</form>
</div>   
           </div>
</section>

</body>
</html>