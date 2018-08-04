<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>查询列表</title>
    <style type="text/css">
        body{
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;;
        }
    </style>
</head>
<body>
            <table width="1120" border="0" cellpadding="8" cellspacing="1" bgcolor="#000000">
                <tr>
                    <td colspan="7" align="center" bgcolor="#FFFFFF">单词查询</td>
                </tr>
                <tr>
                     <td width="80" bgcolor="$FFFFFF">编号</td>
                    <td width="80" bgcolor="$FFFFFF">单词</td>
                    <td width="80" bgcolor="$FFFFFF">词性</td>
                    <td width="80" bgcolor="$FFFFFF">词义</td>
                    <td width="80" bgcolor="$FFFFFF">例句</td>
                </tr>
               
               
                <tr>
                    <td bgcolor="#FFFFFF">&nbsp;${oneWord.编号}</td>
                    <td bgcolor="#FFFFFF">&nbsp;${oneWord.单词}</td>
                    <td bgcolor="#FFFFFF">&nbsp;${oneWord.词性}</td>
                     <td bgcolor="#FFFFFF">&nbsp;${oneWord.词义}</td>
                    <td bgcolor="#FFFFFF">&nbsp;${oneWord.例句}</td>
                   
                </tr>
                
                
            </table>

</body>
</html>