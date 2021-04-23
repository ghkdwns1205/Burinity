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

	 <section class="mainsection">
        <div class="inner">
            <div class="maincont">
         		<label>상품유형 : </label> ${bvo.productType } <br>
         		<label>사업단계 : </label> ${bvo.businessStage } <br>
         		<label>단지명 : </label> ${bvo.apartmentName } <br>
         		<label>도시 : </label> ${bvo.city } <br>
         		<label>구,시,군 : </label> ${bvo.county } <br>
         		<label>읍,면,동 : </label> ${bvo.dong } <br>
         		<label>총세대수 : </label> ${bvo.totalNoH } <br>
         		<label>분양시기 : </label> ${bvo.salesTime } <br>
         		<label>입주시기 : </label> ${bvo.moveInTime } <br>
         		<label>청약접수기간 : </label> ${bvo.subscriptionAP } <br>
         		<label>계약기간 : </label> ${bvo.contractPeriod } <br>
         		<label>당첨자발표일 : </label> ${bvo.announcementDoW } <br>
         		<label>최소면적 : </label> ${bvo.minimumArea } <br>
         		<label>최소면적타입 : </label> ${bvo.minimumAreaT } <br>
         		<label>최대면적 : </label> ${bvo.maximumArea } <br>
         		<label>최대면적타입 : </label> ${bvo.maximumAreaT } <br>
         		<label>최소분양가 : </label> ${bvo.minimumSP } <br>
         		<label>최대분양가 : </label> ${bvo.maximumSP } <br>
         		<label>공고일 : </label> ${bvo.announcementDate } <br>
         		<label>전매기간 : </label> ${bvo.resalePeriod } <br>
         		
           

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



</body>
</html>