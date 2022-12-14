<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--header-->
<html>
<style>
/* navbar */
.navbar-default {
    background-color:    #282828;  /* transparent; */
    border-color:    #282828;
    height: 9%;
}
/* title */
.navbar-default .navbar-brand {
    color: #ffffff;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: #ffffff;
}
/* link */
.navbar-default .navbar-nav > li > a {
    color: #ffffff;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
    color: #D7A35D;
}
.navbar-default .navbar-nav > .active > a, 
.navbar-default .navbar-nav > .active > a:hover, 
.navbar-default .navbar-nav > .active > a:focus {
    color: #D7A35D;
    background-color: #D7A35D;
}
.navbar-default .navbar-nav > .open > a, 
.navbar-default .navbar-nav > .open > a:hover, 
.navbar-default .navbar-nav > .open > a:focus {
    color: #D7A35D;
    background-color: #D7A35D;
}
/* caret */
.navbar-default .navbar-nav > .dropdown > a .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
.navbar-default .navbar-nav > .open > a .caret, 
.navbar-default .navbar-nav > .open > a:hover .caret, 
.navbar-default .navbar-nav > .open > a:focus .caret {
    border-top-color: #D7A35D;
    border-bottom-color: #D7A35D;
}
/* mobile version */
.navbar-default .navbar-toggle {
    border-color: #969696;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
    background-color: #969696;
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #D7A35D;
}
@media (max-width: 767px) {
    .navbar-default .navbar-nav .open .dropdown-menu > li > a {
        color: #D7A35D;
    }
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
        color: #D7A35D;
    }
}
</style>
<body>

   <%
   String USERID = (String) session.getAttribute("SessionUserID"); //??????????????? ???????????? ???????????? USERID,USERPW??? ?????? ?????????
   String USERPW = (String) session.getAttribute("SessionUserPW");
   String USERNAME = (String) session.getAttribute("SessionUserName");
   String USERPHONE = (String) session.getAttribute("SessionUserPhone");
   String USERBIRTH = (String) session.getAttribute("SessionUserBirth");
   %>


   <div class="header">
      <nav class="navbar navbar-default navbar-fixed-top">
         <div class="container">
            <div class="navbar-header">

               <button type="button" class="navbar-toggle collapsed"
                  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                  aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span> <span
                     class="icon-bar"></span> <span class="icon-bar"></span> <span
                     class="icon-bar"></span>
               </button>
               <a href="main.do" class="navbar-brand"
                  style="text-decoration: none;"> 
               <span style="font: 1em Edwardian Script;font-size:150%;" >The Venue</span> 
               <br>
               <span style="font: 1em Edwardian Script;font-size:80%;" >S T U D Y &nbsp;  C A F E</span> 
               
               </a>
            </div>
            <div class="collapse navbar-collapse"
               id="bs-example-navbar-collapse-1">
               <br>
               
               <ul class="nav navbar-nav navbar-right">
                   		   <li><a href="main.do">???</a></li>
                   		   <li><a href="about.do">????????????</a></li>
                           <li><a href="list.do">???????????????</a></li>
                           
                           <%
                              if (USERID != null && USERPW != null && (USERID.equals("ADMIN"))) { // ???????????? ?????????
                           %>
                           <li><a href="">???????????????</a></li>
                           <li><a href="adminReserveList.do">????????????</a></li> <!--????????????  -->
                           <li><a href="userList.do">????????????</a></li> <!--???????????? --> 
                           <li><a href="adminInsertform.do" class="navbar-brand2">???????????????</a></li> <!--??????????????? -->
                           <li><a href="logout.do">????????????</a></li>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN1"))) { // ???????????? ?????????
                           %>
                           <li><a href="">?????????????????????</a></li>
                           <li><a href="admin1ReserveList.do">????????????</a></li> <!--????????????  -->
                           <li><a href="userList.do">????????????</a></li> <!--???????????? --> 
                           <li><a href="logout.do">????????????</a></li>
                           <%
                              } else if (USERID != null && USERPW != null && (USERID.equals("ADMIN2"))) { // ???????????? ?????????
                           %>
                           <li><a href="">???????????????</a></li>
                           <li><a href="admin2ReserveList.do">????????????</a></li> <!--????????????  -->
                           <li><a href="userList.do">????????????</a></li> <!--???????????? --> 
                           <li><a href="logout.do">????????????</a></li>
                           <%
                              }else if(USERID != null && USERPW != null){   
                           %>                           
                           <li><a href="loginseatInfoAlpha.do">????????????</a></li>
                           <li><a href="reserveConfirmAlpha.do">????????????</a></li>
                           <li><a href="myPage.do">???????????????</a></li>
                           <li><a href="logout.do">????????????</a></li>
                           <%
                              } else{ //???????????? ????????????
                           %>
                           <li><a href="seatInfoAlpha.do">????????????</a></li>
                           <li><a href="login.do">?????????</a></li>
                           <%
                              }
                           %>
               </ul>
            </div>
         </div>
      </nav>
   </div>
</body>
</html>