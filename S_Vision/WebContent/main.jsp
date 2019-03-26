<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var mem_id = "elesex";
</script>
</head>
<body>
<form action="account/accountAdd" method="GET">
아이디<input type="text" id="mem_id" name="mem_id"><br> 
계좌번호<input type="text" id="acc_num" name="acc_num"><br> 
은행<input type="text" id="acc_bank" name="acc_bank"><br>
계좌이름<input type="text" id="acc_name" name="acc_name"><br> 
<input type="submit" value="계좌추가"/>
</form>
<br>
<br>
<br>
<br>
<br>
<form action="account/accountList" method="GET">
아이디<input type="text" id="mem_id" name="mem_id" value="elesex"><br>
<input type="submit" value="계좌리스트"/> 
</form>

</body>
</html>