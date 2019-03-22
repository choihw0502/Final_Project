<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="//xeno.work/roadzip/daum.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
</head>
<body>

<form>
	<div class="form-group">                   
<input class="form-control" style="width: 40%; display: inline;" placeholder="�����ȣ" name="addr1" id="addr1" type="text" readonly="readonly" >
    <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> �����ȣ ã��</button>                               
</div>
<div class="form-group">
    <input class="form-control" style="top: 5px;" placeholder="���θ� �ּ�" name="addr2" id="addr2" type="text" readonly="readonly" />
</div>
<div class="form-group">
    <input class="form-control" placeholder="���ּ�" name="addr3" id="addr3" type="text"  />
</div>
</form>

<!-- form �Ʒ��ʿ� �����ϸ� �ǰ�, head �� ������� $(function() {}); �� ���μ���. -->
<script>
	$('input.DaumZipFinder').each(DaumZipFinder);
</script>
</body>
</html>