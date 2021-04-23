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
       
       <div class="fbdetailsection">
      
		  <div class="fbdetail1">
		  		${list.content }
		  		
		  </div>
		  <div class="fbdetail2">
		  		<div class="dd">
		  			<span> ${list.number } <s:message code="board.title"/> : </span>${list.title }
		  		</div>
		  		<div class="dd">
		  			<span><s:message code="board.nickname"/> : </span>${list.nickname }
		  		</div>
		  		<div class="dd">
		  			<span><s:message code="board.date"/> : </span>${list.regdate }
		  		</div>
		  		<div class="dd">
		  			<div class="fbdd1"><span><s:message code="board.hits"/> : ${list.hits}</span></div>
		  			<div class="fbdd2"><span><s:message code="board.likes"/> : ${list.likes}</span></div>
		  		</div>
	  			<div class="dd">
		  			<span><s:message code="board.comment"/></span>
		  		
		  		</div>
		  		
		  		<c:forEach items="${clist}" var="clist">
		  		<div class="ddnick">${clist.nickname}</div>
		  		<div class="ddreg">${clist.regdate}</div>
		  		<c:if test="${not empty color}">
		  		<div class="ddcommred" style="color:red">${clist.comment}</div>
		  		</c:if>
		  		<c:if test="${empty color}">
		  		<div class="ddcomm" >${clist.comment}</div>
		  		</c:if>
		 		</c:forEach>
		 			 
	 			 </div>
	
		<div class="eotrmf">
		<form action="insertfbcomment?cnumber=${list.number}" method="post">
			<input type="hidden" name="nickname" value="${sessionScope.userid}">
			<div class="tbox"><input type="text" name="comment" class="tboxinput"></div>
				<div class="botcolor">
<!-- 				<input type="checkbox" name="color" value="red"><div class="red"></div> -->
				</div>
			<div class="submit"><input type="submit" value="<s:message code="submit.comment"/>"></div>	
		</form>
		</div>
	
	</div>
	
	
	
	
	
	<a href="interest?number=${list.number}&likes=${list.likes}"><button class="likes"><s:message code="board.likes"/></button></a>
	
	
	
	</div>
	</section>
<!-- 	<form action="freeboarddetail" method="post"> -->
<!-- 		<input type="button" name="interest" value="좋아요"> -->
<!-- 		<input type="submit" value="싫어요"> -->
<!-- 	</form> -->

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