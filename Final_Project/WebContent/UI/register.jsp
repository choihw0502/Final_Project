<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>


<script type='text/javascript'>
    $(function(){
        $('.input-group.date').datepicker({
            calendarWeeks: false,
            todayHighlight: true,
            autoclose: true,
            format: "yyyy/mm/dd",
            language: "kr"
        });
    });
</script>
<style type="text/css">
body{
    display: table-cell;
    vertical-align: middle;
    background-color: #e0f2f1 !important;
}

html {
    display: table;
    margin: auto;
}

html, body {
    height: 100%;
}

.medium-small {
    font-size: 0.9rem;
    margin: 0;
    padding: 0;
}

.login-form {
    width: 500px;
}

.login-form-text {
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 0.8rem;
}

.login-text {
    margin-top: -6px;
    margin-left: -6px !important;
}

.margin {
    margin: 0 !important;
}

.pointer-events {
    pointer-events: auto !important;
}

.input-field >.material-icons  {
    padding-top:10px;
}

.input-field div.error{
    position: relative;
    top: -1rem;
    left: 3rem;
    font-size: 0.8rem;
    color:#FF4081;
    -webkit-transform: translateY(0%);
    -ms-transform: translateY(0%);
    -o-transform: translateY(0%);
    transform: translateY(0%);
}
</style>
</head>
<body>
<div id="login-page" class="row">
  <div class="col s12 z-depth-4 card-panel">
    <form class="login-form">
      <div class="row">
      				<h6><a href="main.jsp"><</a></h6>
        <div class="input-field col s12 center">
        	<h6><img src="images/vision.png" id="imagepreview" style="width: 150px; height: 30px">계정 만들기</h6>
         
          <p class="center">지금 바로 가입해 보세요!</p>
        </div>
      </div>
	  <div class="row margin">
          <div class="input-field col s8">
            <i class="material-icons prefix">account_circle</i>
            <input id="id" name="id" type="text" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&quot;); cursor: auto;"/>
            <label for="id" data-error="경고" class="center-align" data-success="성공">&nbsp;&nbsp;&nbsp;아이디</label>
          </div>
          <div class="input-field col s4">  
            <span class="input-group-btn" >
				<button id="id" type="button" class="btn btn-success" >중복검사</button>
				<input type="hidden" id="id" value="no"/>
			</span>	
          </div>
        </div>		
      <div class="row margin">
        <div class="input-field col s12">
          <i class="material-icons prefix">face</i>
          <input id="name" name="name" type="text"/>
          <label for="name" data-error="경고" class="center-align" data-success="성공">&nbsp;&nbsp;&nbsp;이름</label>
        </div>
      </div>
      
      <div class="row margin">
        <div class="input-field col s12">
            <div class="input-group date">
          		<i class="material-icons prefix">cake</i>
				<input id="birth" name="birth" type="text" class="form-control"/>
          		<label for="birth" data-error="경고" class="center-align" data-success="성공">생년월일</label>
				<span class="input-group-addon"style="background-color: #ffffff; border-color: #ffffff"><i class="glyphicon glyphicon-calendar"></i></span>
        	</div>
        </div>
      </div>
      
      <div class="row margin">
        <div class="input-field col s6" style="width: 250px">
	        <i class="material-icons prefix">place</i>
	        <input placeholder="&nbsp;&nbsp;&nbsp;우편번호" class="form-control" style="width: 40%; display: inline;" name="addr1" id="addr1" type="text" readonly="readonly" >
        </div>
        <div class="input-field col s6">
        	<button type="button" class="btn btn-default" onclick="execPostCode();" style="width: 150px">
        	<i class="fa fa-search"></i>우편번호 찾기</button>  
        </div><br>
	    <div class="input-field col s12">
	        <input placeholder="&nbsp;&nbsp;&nbsp;주소" name="addr2" id="addr2" type="text" readonly="readonly"/>
	    </div>
	    <div class="input-field col s12">
	        <input name="addr3" id="addr3" type="text"/>
	    	<label for="addr3">&nbsp;&nbsp;&nbsp;상세주소</label>
	    </div>
      </div>
      <div class="row">
        <div class="input-field col s4">
          <i class="material-icons prefix">wc</i>
          <input type="radio" id="man" name="chk_info" value="남"/>
              <label for="man" class="pointer-events" data-error="경고" class="center-align" data-success="성공">남</label>
          </div>
      <div class="input-field col s8 ">                   
          <input type="radio" id="woman" name="chk_info" value="여"/>
              <label for="woman" class="pointer-events">여</label>
          </div>
      </div> 
    
      <div class="row margin">
        <div class="input-field col s12">
          <i class="mdi-social-person-outline prefix"></i>
          <i class="material-icons prefix">email</i>
          <input id="email" name="email" type="text" style="cursor: auto;" />
          <label for="email" data-error="경고" class="center-align" data-success="성공">&nbsp;&nbsp;&nbsp;이메일</label>
        </div>
      </div>
      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-action-lock-outline prefix"></i> -->
          <i class="material-icons prefix">vpn_key</i>
          <input id="password" name="password" type="password" />
          <label for="password" >&nbsp;&nbsp;&nbsp;비밀번호</label>
        </div>
      </div>

      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-action-lock-outline prefix"></i> -->
          <i class="material-icons prefix">vpn_key</i>
          <input id="password_a" name="cpassword" type="password" />
          <label for="password_a" data-error="경고" class="center-align" data-success="성공">&nbsp;&nbsp;&nbsp;비밀번호 확인</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <button type="submit" class="btn waves-effect waves-light col s12">회원 가입</button>
          
        </div>
        <div class="input-field col s12">
          <p class="margin center medium-small sign-up">계정을 있으신가요? <a href="loginForm.jsp">로그인</a></p>
        </div>
      </div>
    </form>     
  </div>
</div>
  <script type="text/javascript">
  $(".login-form").validate({
	  rules: {
		id: {
		   required: true,
		   minlength: 4
		},
		name: {
	      required: true,
	      minlength: 3
	    },     
	    addr1: {
		      required: true
		},
	    addr2: {
		      required: true
		},
	    addr3: {
		      required: true
		},
	    email: {
	      required: true,
	      email:true
	    },
	    
	    password: {
	      required: true,
	      minlength: 5
	    },
	    cpassword: {
	      required: true,
	      minlength: 5,
	      equalTo: "#password"
	    }
	  },
	  //For custom messages
	  messages: {
	    id:{
	      required: "아이디를 입력하세요.",
	      minlength: "4자 이상 입력하세요."
	    },
	    name:{
	      required: "이름을 입력하세요.",
	      minlength: "3자 이상 입력하세요."
	    },
	    addr1: {
		      required: "우편번호를 입력하세요."
		},
	    addr2: {
		      required: "주소를 입력하세요."
		},
	    
	    addr3: {
		      required: "상세주소를 입력하세요."
		},
	    email: {
		      required: "이메일을 입력하세요.",
		      email:"정확히 입력하세요."
		},
	    password:{
	      required: "비밀번호를 입력하세요.",
	      minlength: "5자 이상 입력하세요."
	    },
	    cpassword:{
	      required: "비밀번호를 확인하세요.",
		  minlength: "5자 이상 입력하세요.",
		  equalTo: "비밀번호가 다릅니다."
	    }
	  },
	  errorElement : 'div',
	  errorPlacement: function(error, element) {
	    var placement = $(element).data('error');
	    if (placement) {
	      $(placement).append(error)
	    } else {
	      error.insertAfter(element);
	    }
	  }
	});
  </script>
  <script type="text/javascript">
  ;(function($){
		$.fn.datepicker.dates['kr'] = {
			days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
			daysShort: ["일", "월", "화", "수", "목", "금", "토", "일"],
			daysMin: ["일", "월", "화", "수", "목", "금", "토", "일"],
			months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
			monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
		};
	}(jQuery));
  </script>
<script type="text/javascript">
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
           $("[name=addr1]").val(data.zonecode);
           $("[name=addr2]").val(fullRoadAddr);
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}

</script>
</body>
</html>