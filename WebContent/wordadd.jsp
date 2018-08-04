<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head>
<title>图书入库</title>
</head>
<body>
<form id="form1" name="form1" method="post" action="wordAdd">
<table>
	<tr>
		<td>编号</td>
		<td><input type="text" name="number" id="number"></td>
	</tr>
	<tr>
		<td>单词</td>
		<td><input type="text" name="word" id="word"></td>
	</tr>
	<tr>
		<td>词性</td>
		<td><input type="text" name="verb" id="verb"></td>
	</tr>
	<tr>
		<td>词意</td>
		<td><textarea name="meaning" id="meaning" cols="60" rows="5"></textarea></td></tr>
	<tr>
		<td>例句</td>
		<td><textarea name="sentence" id="sentence" cols="60" rows="5"></textarea></td></tr>
	<tr>
		<td><input type="submit" name="button" id="button" value="提交" /></td>
	</tr>
</table>
</form>
</body>
</html>