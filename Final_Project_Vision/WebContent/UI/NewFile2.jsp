<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./myTooltip.css"> 
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> 
<script src="./myTooltip.js"></script>

</head>
<body>
<style>
.mytooltip-content {
	width: 300px;
}
</style>
	<div id="" class="" style="display: block;">
		<h2>Change Password</h2>
		<div id="" class="form-group col-xs-2">
			<label id="" class="">ID</label> <input id="ch_userId"
				class="form-control" type="text" tabindex="1"> <label id=""
				class="">Currnet Password</label> <input class="form-control"
				id="ch_current_pw" ref="" type="password" style="" tabindex="2">
			<label id="" class="">New Password</label> <input
				class="js-mytooltip-pw form-control" id="ch_new_pw" type="password"
				style="" tabindex="3" data-mytooltip-direction="right"
				data-mytooltip-dinamic-content="true" data-mytooltip-action="focus"
				data-mytooltip-animate-duration="0"> <label id="" class="">Confirm
				Password</label> <input id="ch_re_pw" class="form-control" type="password"
				tabindex="4">
		</div>
	</div>

	<script>
		isNull = function(object) {
			try {
				if (typeof object == "boolean") {
					return false;
				} else {
					return (object == null || typeof object == "undefined"
							|| object === "" || object == "undefined");
				}
			} catch (e) {
				alert("isNull: " + object + "::" + e.message);
				WebSquare.exception.printStackTrace(e);
			}
		}; //�ű� ��й�ȣ üũ 

		function getPwContent(key) {
			var pwd = key;
			var passed = validatePassword(pwd);
			return passed;
		} //��й�ȣ ������ üũ 
		function validatePassword (pw, options) { var o = { length: [6, 16], lower: 1, upper: 1, alpha: 1, /* lower + upper */ numeric: 1, special: 1, custom: [ /* regexes and/or functions */ ], badWords: [], badSequenceLength: 5, noQwertySequences: true, spaceChk: true, noSequential: false }; // space bar check 
		if (o.spaceChk && /\s/g.test(pw)) { return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>���Ұ�</span> : ��й�ȣ ���ۼ� �ʿ�" + "<br/>" + "<span style='color:#999; font-weight:bold;'>���� ��ҹ���, ���� �� Ư������ ���</span></p>"; } //password ���� üũ 
		if (pw.length < o.length[0]) return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>���Ұ�</span>" + "<br/>" + "<span style='color:#999; font-weight:bold;'>��й�ȣ�� " + o.length[0] + "�� �̻� �Է��ϼž� �մϴ�.</span></p>"; if (pw.length > o.length[1]) return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>���Ұ�</span>" + "<br/>" + "<span style='color:#999;'>��й�ȣ�� " + o.length[1] + "�� �̳��� �Է��ϼž� �մϴ�.</span></p>"; // bad sequence check 
		if (o.badSequenceLength && pw.length >= o.length[0]) { var lower = "abcdefghijklmnopqrstuvwxyz", upper = lower.toUpperCase(), numbers = "0123456789", qwerty = "qwertyuiopasdfghjklzxcvbnm", start = o.badSequenceLength - 1, seq = "_" + pw.slice(0, start); for (i = start; i < pw.length; i++) { seq = seq.slice(1) + pw.charAt(i); if ( lower.indexOf(seq) > -1 || upper.indexOf(seq) > -1 || numbers.indexOf(seq) > -1 || (o.noQwertySequences && qwerty.indexOf(seq) > -1) ) { return "<p style='line-height:200%;'>��й�ȣ ������ <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>����</span> " + "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>��</span>" + "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<br/>" + "<span style='color:#999; font-weight:bold;'>�������� ���� ��й�ȣ�� �����մϴ�.</span></p>"; } } } //password ���Խ� üũ 
		var re = { lower: /[a-z]/g, upper: /[A-Z]/g, alpha: /[A-Z]/gi, numeric: /[0-9]/g, special: /[\W_]/g }, rule, i; var lower = (pw.match(re['lower']) || []).length > 0 ? 1 : 0; var upper = (pw.match(re['upper']) || []).length > 0 ? 1 : 0; var numeric = (pw.match(re['numeric']) || []).length > 0 ? 1 : 0; var special = (pw.match(re['special']) || []).length > 0 ? 1 : 0; //���ڷθ� �̷������ ���� 
		if((pw.match(re['numeric']) || []).length == pw.length ) { return "<p style='line-height:200%;'><span style='color:#E3691E; font-weight:bold;'>���Ұ�</span> : ��й�ȣ ���ۼ� �ʿ�" + "<br/>" + "<span style='color:#999; font-weight:bold;'>���� ��ҹ���, ���� �� Ư������ ���</span></p>"; } //����, ���ĺ�(�빮��, �ҹ���), Ư������ 2���� ���� 
		else if(lower + upper + numeric + special <= 2){ return "<p style='line-height:200%;'>��й�ȣ ������ <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>����</span> " + "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>��</span>" + "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<br/>" + "<span style='color:#999; font-weight:bold;'>�������� ���� ��й�ȣ�� �����մϴ�.</span></p>"; } //����, ���ĺ�(�빮��, �ҹ���), Ư������ 4���� ���� 
		else if(lower + upper + numeric + special <= 3) { return "<p style='line-height:200%;'>��й�ȣ ������ <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>����</span> " + "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>��</span>" + "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<span style='color:#E5E5E5; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<br/>" + "<span style='color:#999; font-weight:bold;'>�����ϰ� ����Ͻ� �� �ִ� ��й�ȣ �Դϴ�.</span></p>"; } //����, ���ĺ�(�빮��, �ҹ���), Ư������ 4���� ���� 
		else { return "<p style='line-height:200%;'>��й�ȣ ������ <span style='color:#E5E5E5'>|</span> <span style='color:#E3691E; font-weight:bold;'>����</span> " + "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;'>��</span>" + "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<span style='color:#E3691E; font-weight:bold; font-size:20px; position: relative; top: 1.5px;''>��</span>" + "<br/>" + "<span style='color:#999; font-weight:bold;'>�����ϱ� ���� ��й�ȣ�� ���� �����մϴ�.</span></p>"; } // enforce the no sequential, identical characters rule 
		if (o.noSequential && /([\S\s])\1/.test(pw)) return "no sequential"; // enforce word ban 
		(case insensitive) for (i = 0; i < o.badWords.length; i++) { if (pw.toLowerCase().indexOf(o.badWords[i].toLowerCase()) > -1) return "bad word"; } // enforce custom regex
		/function rules for (i = 0; i < o.custom.length; i++) { rule = o.custom[i]; 
		if (rule instanceof RegExp) { if (!rule.test(pw)) return "custom"; } 
		else if (rule instanceof Function) { if (!rule(pw)) return "custom"; } } }; 
		$(document).ready(function() { $("#ch_new_pw").off("focus").on("focus", function() { var value = $(this).val(); $('.js-mytooltip-pw').myTooltip('updateContent', getPwContent(value)); }); 
		$("#ch_new_pw").off("click").on("click", function() { var value = $(this).val(); 
			if(!isNull(value)) { $('.js-mytooltip-pw').myTooltip('updateContent', getPwContent(value)); } }); 
		$("#ch_new_pw").off("keyup").on("keyup", function() { $("#ch_new_pw").blur(); $("#ch_new_pw").focus(); }); //��й�ȣ ������ 
	 	$('.js-mytooltip-pw').myTooltip({ 'offset': 30, 'theme': 'light', 'customClass': 'mytooltip-content', 'content': '<p>t</p>' }); });
	</script>


</body>
</html>