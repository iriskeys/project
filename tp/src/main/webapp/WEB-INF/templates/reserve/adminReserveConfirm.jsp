<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html xmlns:th="http://www.thymeleaf.org" lang="kor">
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="UTF-8">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" href="/resources/css/jquery-ui-timepicker-addon.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script src="./datepicker/js/datepicker.ko.js"></script>

<script type="text/javascript">
   
   
   
</script>

<style>
/* @import url('http://fonts.googleapis.com/earlyaccess/nanumgothic.css'); */
@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 100;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 300;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 400;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 500;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf)
      format('opentype');
}

@font-face {
   font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 900;
   src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2)
      format('woff2'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff)
      format('woff'),
      url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf)
      format('opentype');
}

body {
   margin: 0 auto;
}
/* body, table, div, p ,span{font-family:'Nanum Gothic';} */
body, table, div, p, span {
   font-family: 'Noto Sans KR';
}

a {
   text-decoration: none;
   color: #333;
}

#con {
   width: 100%;
   height: 100vh;
   background-image: url("https://blog.kakaocdn.net/dn/dC8sug/btqE1C7CoHK/W1cWrwnkVwXYcDJxyyqoQk/img.jpg");
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
   padding: 0;
}

#reserve {
   width: 600px;
   height: 600px;
   margin: 0 auto;
   /* position: relative; */
   /* background:#ddd; */
}

#reserve_form {
   /* text-align:center; */
   border-radius: 10px;
   padding: 50px;
   background-color: rgba(051, 051, 051, 0.9);
   text-align: center;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
}

.login {
   font-size: 25px;
   font-weight: 900;
   color: #FDF5DC;
}

.size {
   width: 300px;
   height: 30px;
   padding-left: 10px;
   background-color: #FDF5DC;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display: inline-block;
}

.size2 {
   width: 100px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.size3 {
   width: 145px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.size4 {
   width: 235px;
   height: 30px;
   padding-left: 10px;
   background-color: #f4f4f4;
   /* margin-left:10px; */
   border: none;
   border-radius: 5px;
   display :inline-block;
}

.btn {
   width: 310px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn:hover {
   background: #D7A35D;
}

hr {
   margin-top: 20px;
   background: #eee;
}

.find {
   color: #ddd;
   font-size: 12px;
}

.find span {
   padding-left: 10px;
}

.find span::before {
   content: '|';
   color: #333;
   padding-right: 10px;
}

.find span:nth-child(1):before {
   content: none;
}

.find span:nth-child(1) {
   padding-left: 0px;
}

.find a:hover {
   color: #707070;
}

.num1 {
   width: 60px;
   text-align: left;
}

.num2 {
   width: 235px;
}

.id_ok {
   color: #008000;
   display: none;
}

.id_already {
   color: #6A82FB;
   display: none;
}

.btn2 {
   width: 50px;
   height: 40px;
   font-size: 15px;
   background-color: #D7A35D;
   color: #fff;
   border: none;
   cursor: pointer;
   border-radius: 5px;
}

.btn2:hover {
   background: #D7A35D;
}
#table{
   background-color: #FDF5DC;
   border-radius: 5px;
}
th, td {
  text-align: left;
}
</style>

<script type="text/javascript">
   
   function reservedelete(a) {
       var resNo = a
      
      $.ajax({
         url:'reserveDeleteConfirm.do',
         type:'POST',
         data:{
            reserveNo:resNo   
         },
         datatype:'JSON',         
         success: function(data) {
            if(data == "success"){
               location = "reserveDelete.do"
            }
            
         }
      });
   }
   
</script>
   
<title>The Venue Study Cafe</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp"></jsp:include>
<br><br>
   <div id="con">
      <div id="reserve">
      
         <div id="reserve_form">
         <br><br>
            <form>
               <h3 class="login" style="letter-spacing: -1px;">?????? ???????????? ??????</h3>
               <hr>
               <input id="reserveNo" value="${SessionreserveNo}" type="hidden" />
               
        <div id="mainHide">
      <table class="table table-hover" id="table" style='width:1000px'> 
         <thead style="background-color:#fff7c4">
            <tr>
               <th scope="col">??????</th>
               <th scope="col">?????????</th>
               <th scope="col">??????</th>
               <th scope="col">?????????</th>
               <th scope="col">??????</th>
               <th scope="col">????????????</th>
               <th scope="col">????????????</th>
               <th scope="col">?????????</th>
               <th scope="col">????????????</th>
               <th scope="col">????????????</th>
            </tr>
         </thead>
         <tbody>
         <c:forEach var="adminreserve" items="${adminReserveList}">
            <tr>
               <td>${adminreserve.reserveNo}</td>
               <td>${adminreserve.userId}</td>
               <td>${adminreserve.userName}</td>               
               <td>${adminreserve.userPhone}</td>
               <td><fmt:formatDate value="${adminreserve.reserveDate}" pattern="yyyy-MM-dd" /></td>
               <td>${adminreserve.reserveSTime}</td>
               <td>${adminreserve.reserveETime}</td>
               <td>
               <c:set var="rno" value="${adminreserve.roomNo}" />
               <c:if test="${rno eq 1}">
                  <c:out value="1??? 4??????" />
               </c:if>
               <c:if test="${rno eq 2}">
                  <c:out value="2??? 4??????" />
               </c:if>
               <c:if test="${rno eq 3}">
                  <c:out value="3??? 6??????" />
               </c:if>
               <c:if test="${rno eq 4}">
                  <c:out value="4??? 6??????" />
               </c:if>
               </td>
               <td>
               <c:set var="bno" value="${adminreserve.branchNo}" />
               <c:if test="${bno eq 1}">
                  <c:out value="?????????????????????" />
               </c:if>
               <c:if test="${bno eq 2}">
                  <c:out value="???????????????" />
               </c:if>
               </td>
               <td>${adminreserve.price}???</td>
               <td><input type="button" class="btn2" onclick="reservedelete(${adminreserve.reserveNo})" value="??????" /></td>
            </tr>
         </c:forEach>
         </tbody>
      </table>      
   </div>              
   <!--????????? ??????  -->
   <div class="big-width" style="text-align: center">
      <input type="button" onclick="location.href='adminReserveList.do?viewPage=1'" value="??????" class="btn2"></input>                 
      <c:forEach var="i" begin="1" end="${totalPage}">
      <input type="button" onclick="location.href='adminReserveList.do?viewPage=${i}'"  class="btn4" value="${i}"></input>
         <%-- <a href="reserveConfirm.do?viewPage=${i}" class="btn4">${i}</a> --%>
      </c:forEach>
      <input type="button" onclick="location.href='adminReserveList.do?viewPage=${totalPage}'" value="???" class="btn2"></input>   
   </div>
   <br/>
                  <p></p>
                  <br>                
                  <input type="button" class="btn2" onclick="location.href='main.do'" value="??????" />
                  
            </form>
         </div>
         </div>
         </div>
</body>
</html>