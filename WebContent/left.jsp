<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
	String path = request.getContextPath();
%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>左栏</title>

<style type="text/css">

*{margin:0;padding:0}
a{text-decoration:none}
#conter{width:1000px;margin:auto}
#help-left{width:255px;font-family:'microsoft YaHei';float:left}
.menu{border-left:1px solid #ccc;border-right:1px solid #ccc}
.menu:last-child{border-bottom:1px solid #ccc}
.menu summary{height:40px;line-height:40px;text-indent:10px;outline:0;font-size:24px;font-weight:700;border-top:1px solid #ddd;background:-webkit-gradient(linear,left top,left bottom,color-stop(0,#FEFEFE),color-stop(1,#CCC));cursor:pointer}
.menu summary::-webkit-details-marker{display:none}
.menu summary:before{content:"+";display:inline-block;width:16px;height:16px;margin-right:10px;font-size:18px;font-weight:700}
.menu[open] summary:before{content:"-"}
.menu ul{padding:10px 0}
.menu ul li{list-style:none;text-indent:50px;font-size:15px;height:30px;line-height:40px}
.menu ul li a{display:block;color:#000}
.menu ul li a:hover{ color: #03F;text-decoration:underline}
.menu ul li a:link{text-decoration:none}
</style>
<LINK href="<%=path%>/images/duan_1.css" type=text/css rel=stylesheet> 
</head>
<body>
	<!--代码部分begin -->
    <section id="conter">
        <section id="help-left">
            <details class="menu" open>
                <summary>单词管理目录</summary>
                <ul>
             <li><a href="wordList" target="frmright">单词清单</a></li>
			<li><a href="wordadd.jsp" target="frmright">单词增加</a></li>
			<li><a href="wordDel" target="frmright">单词删除</a></li>
			<li><a href="search.jsp" target="frmright">单词查询</a></li>
                </ul>
            </details>
            <details class="menu" open>
                <summary>经典例句</summary>
                <ul> 
                    <li><a href="#">名人佳句</a></li>
                    <li><a href="#">热点词句</a></li>
                </ul>
            </details>
            <details class="menu" open>
                <summary>相关链接</summary> 
                <ul>
                     <li><a href="http://www.iciba.com/" target="_blank" ><img src="<%=path%>/images/01.jpg" width="25" height="15" />金山翻译</a></li>
                    <li><a href="http://www.youdao.com/" target="_blank"><img src="<%=path%>/images/02.jpg" width="25" height="15" />网易有道</a></li>
                    <li><a href="http://hanying.supfree.net/" target="_blank"><img src="<%=path%>/images/03.jpg" width="25" height="15" />汉英词典查询</a></li>
                    <li><a href="http://www.lingoes.cn/" target="_blank"><img src="<%=path%>/images/04.jpg" width="25" height="15" />灵格斯词典</a></li>
                    <li><a href="http://ky.iciba.com/" target="_blank"><img src="<%=path%>/images/05.jpg" width="25" height="15" />金山快译</a></li>
                </ul>
            </details>
  <!--          <details class="menu" open>
                <summary>111</summary>
                <ul>
                    <li><a href="#">222</a></li>
                    <li><a href="#">333</a></li>
                    <li><a href="#">444</a></li>
                    <li><a href="#">555</a></li>
                    <li><a href="#">666</a></li>
                </ul>
            </details>
            -->
        </section>
        <section id="help-right"></section>
    </section>
    <!--代码部分end -->
</body>
</html>