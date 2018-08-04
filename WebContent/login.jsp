<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<style type="text/css">
div{
    margin:0 auto;
    text-align:center;
    
   }
.div1{
	
      width:500px; 
      height:250px;
      border-style:groove;
      border-width:2px;
      margin-top:270px;
	   margin-right:250px;
     }
.div2{
	background-color:#06F;
      width:500px; 
      height:45px;
      border-bottom-style:groove;
      border-bottom-width:2px;
      line-height:30px;
      font-weight:bold;
     }
.div3{
      font-size:18px;
      font-weight:bold;
     }
.div4{
      font-size:18px;
      font-weight:bold;
      margin-left:-80px;
      margin-top:10px;
     }
.div5{
      font-size:18px;
      font-weight:bold;
      margin-left:160px;
      margin-top:-44px;
     }
*{
	padding:0;
	margin:0;
	} 
body{
	background:url(images/07.jpg) no-repeat center top;
	background-size:100%;
		 
		 }

</style>
</head>

<body>

<div class="div1">
<div class="div2" >登录界面</div>
<div class="div3">
<form action="login.do" method="post">
<br/>
用户:<input name="uname" type="text" style="width:200px; height:25px;"/><br/>
<br/>
密码:<input name="pass" type="password" style="width:200px; height:25px;"/><br/>
<div class="div4">
<input type="submit" value="登录" style="width:80px; height:25px;" />
</div> 
</form>
</div> 
<br/>
<div class="div5">
<input type="submit" value="注册" style="width:80px; height:25px;" onclick="window.open('pass.jsp')"  />
</div>
</div>
</div>
</body>
</html>
