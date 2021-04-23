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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


    <script>
    $(function(){

    	 $(window).scroll(function(){
    	 
    	 			 var location = $(window).scrollTop();
    	           
    	            
    	        if($(document).scrollTop()>=300){
    	            $('.menubar').css({
    	            	position: 'fixed',
    	                bottom:'10px',
    	                left:'267px'
//     	                left:'50%',
//     	                transform:'translateX(-50%)'
    	            })
    	        }else{
    	            $('.menubar').css({
    	            	position: 'static'
    	            })
    	        }

    	   } )

    	})
	</script>

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
                <a href="userLogin"><input type="button" value="<s:message code="common.btnLogin"/>" class="headlogin"></a>
<!--                   <a href="logout"><input type="button" value="로그아웃" class="headlogout"></a> -->
                  <a href="userJoin"><input type="button" value="<s:message code="common.btnJoin"/>" class="headsignup"></a>
                  </c:if>
                  
                   <c:if test="${not empty sessionScope.userid}">
<!--                 <a href="login"><input type="button" value="로그인" class="headlogin"></a> -->
                  <a href="userLogout"><input type="button" value="<s:message code="common.btnLogout"/>" class="headlogout"></a>
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
       
       <div class="freeboardsearch">
       <form action="freeboard">
   			<select name="searchType">
				<option ${(param.searchType == "title")?"selected":""} value="title"><s:message code="common.searchTitle"/></option>
				<option ${(param.searchType == "nickname")?"selected":""} value="nickname"><s:message code="common.searchNickname"/></option>
			</select>
			 <input type="text" name="searchKeyword">
			 <input type="submit" value="<s:message code="submit.search"/>" >
	   </form>
       </div>
       
       
       
            <div class="freeboardsection">
         		
<%-- 	${list.contentid} --%>
<%-- 	${list.title} --%>

         	<div class="boarddiv">
         	<div class="content"><span><s:message code="board.title"/></span></div>
         	<div class="nickname"><span><s:message code="board.nickname"/></span></div>
         	<div class="regdate"><span><s:message code="board.date"/></span></div>
         	<div class="hits"><span><s:message code="board.hits"/></span></div>
         	<div class="like"><span><s:message code="board.likes"/></span></div>
         	
         	</div>
<%--          	<c:if test="${param.search == null}"> --%>
         	<c:forEach items="${list}" var="list">
			<div class="boarddiv">
			<div class="content">
			 <c:if test="${empty sessionScope.userid}">
			<a href="userLogin" onclick="alert('로그인 후에 이용해주세요.')"><span>${list.title}</span></a>
			</c:if>
			<c:if test="${not empty sessionScope.userid}">
			<a href="freeboarddetail?number=${list.number}"><span>${list.title}</span></a>
			</c:if>
			</div>
         	<div class="nickname"><span>${list.nickname}</span></div>
         	<div class="regdate"><span><fmt:formatDate pattern="yyyy.MM.dd" value="${list.regdate}" /></span></div>
         	<div class="hits"><span><fmt:formatNumber type="number" pattern="###,###"
					value="${list.hits}" /></span></div>
         	<div class="like"><span><fmt:formatNumber type="number" pattern="###,###"
					value="${list.likes}" /></span></div>
			</div>
			</c:forEach>
			
			
				<!-- startnum 변수 선언 및 값 할당 -->
	<c:set var = "page" value = "${bo.page}"></c:set>
	<c:set var = "startNum" value = "${bo.pageStart}"></c:set>
	<c:set var = "lastNum" value = "${bo.pageEnd}"></c:set>
				
				<!-- 현재 페이지 찍어보는것 -->
<!-- 	<div> -->
<!-- 		<h3>현재 페이지</h3> -->
<%-- 		<div><span>${(empty param.p)?1:param.p}</span>/ ${lastNum} page</div> --%>
		
<!-- 	</div> -->
	
	<!-- 페이지 이동 -->
	<!-- prev 이전 -->
			<div class="page"> 
		
 		<c:if test="${bo.page > 1}"> 
			<a href = "?page=${bo.page-1}" class="prev">prev</a>
		</c:if>
		<c:if test="${bo.page <= 1}">
			<a href = "#" onclick="alert('첫번째 페이지입니다.');" class="prev">prev</a>
 		</c:if> 
	
	<ul>
		<c:forEach var="i" begin="0" end="4">
		
		<c:if test="${bo.page == (startNum+i)}">
				<c:set var= "style" value= "font-weight:bold; color:red;" />
		</c:if>
		
		<c:if test="${bo.page != (startNum+i)}">
				<c:set var= "style" value= "" />
		</c:if>
		
		<c:if test="${(startNum+i)<=lastNum}">
		<li class=pnum><a style = "${style}" href="?page=${startNum+i}">${startNum+i}</a>
		</li>
		</c:if>
		
		</c:forEach>
	</ul>
	
	<!-- next 다음 -->
		<c:if test="${bo.page < lastNum}">
			<a href = "?page=${bo.page+1}" class="next">next</a>
		</c:if>
		<c:if test="${bo.page >= lastNum}">
			<a href = "#" onclick="alert('마지막 페이지입니다.');" class="next">next</a>
		</c:if>
				
       		</div>
       		
       		
      	</div>
      	</div>
    </section>
    <div class="writer">
    <c:if test="${empty sessionScope.userid}">
<a href="userLogin" onclick="alert('로그인 후에 이용해주세요.')" class="write_a"><span><s:message code="board.write"/></span></a>
</c:if>
<c:if test="${not empty sessionScope.userid}">
<a href="write" class="write_a"><span><s:message code="board.write"/></span></a>
</c:if>
</div>
<!-- <div class="writer"><a href="write"><input type="button" value="글쓰기"></a></div> -->
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