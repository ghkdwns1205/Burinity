<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Myproject.css">
<script type="text/javascript" src="${root}/js/user/signUp.js?ver=1"></script>
<script type="text/javascript" src="/js/jquery-3.1.1.min.js"></script>


</head>

<body>

    <div class="wrap">

        <!-- <div>
            <a href="www.naver.com"><img src="/naverimg.jpg" alt=""></a>

        </div> -->
        
    <header>
        <div class="inner">
        
            <div class="headertop">
                    <a href="userLogin"><input type="button" value="<s:message code="common.btnLogin"/>" class="headlogin"></a>
                  <a href="index"><input type="button" value="<s:message code="common.btnMain"/>"></a>
            </div>
        
            <div class="banner">
                <h1><span class="burin"><s:message code="common.banner1"/></span><s:message code="common.banner2"/></h1>
                <h3><s:message code="common.banner3"/></h3>
                
            </div>
        </div>
    </header>

    <section class="join">
        <div class="inner">
            <br>
            <fieldset>
                <legend><s:message code="join.join"/></legend>
<br>
<form id="joinform" name="joinform" method="post" action="userJoin" onsubmit="return createFrom(this)">
             <div class="nid"><s:message code="join.id"/>
                 <input type="text" name="userid" size="15" required>
                 <button type="button" onclick="idCheck(joinform, '${root}')"><s:message code="join.idCheck"/></button>
             </div>
<br>
             <div class="npass"><s:message code="join.pass"/>
                  <input type="password" name="userpass" size="15" minlength="3" required>
             </div>
<br>
             
             <div class="npasscheck"><s:message code="join.passCheck"/>
                  <input type="password" name="userpasscheck" size="15" minlength="3" required>
             </div>
<br>
             <div class="name"><s:message code="join.name"/>
                  <input type="text" name="name" size="15" required>
             </div>
<br>
             <div class="email"><s:message code="join.email"/>
                  <input type="email" name="email" size="20" required>
             </div>
<br>
             <div class="gender"><s:message code="join.gender"/>
                <input type="radio" name="gender" value="M">남자
                <input type="radio" name="gender" value="W">여자
           </div>
<br>
                <div class="joinsub">

                    <input type="submit" value="<s:message code="submit.join"/>">
                    <input type="reset" value="<s:message code="input.reset"/>">

                </div>
</form>
            </fieldset>
        </div>
    </section>
    </div>
</body>
</html>