<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
	<meta charset="utf-8">
	<title>회원가입</title>
	<link href="/resources/css/register.css" type="text/css" rel="stylesheet">
</head>
<body>
<h1>
	모여라 작가들
</h1>
<div id="total">
	<P> 회원 정보 입력 </P>
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input id="nick" type="text">	
				<button id="nickBTN" onclick="checkNick()">중복확인</button>
				
				<script type="text/javascript">					
					function checkNick() {
						var nick = document.getElementById("nick").value;
						var nickling = nick.replace(/\s/gi,"");
						
						if (nick == "") {
							alert("닉네임을 입력해주세요");
							document.getElementById("nick").focus();
						} else {							
							nick.innerHTML = nickling.value;
							alert(nickling+"은/는 사용가능한 닉네임입니다. 사용하시겠습니까?");
							document.getElementById("ID").focus();
						}
					}
				</script>
				
			</td>
		</tr>
			<tr>
			<td>아이디</td>
			<td><input id="ID" type="text">		<button>중복확인</button></td>
		</tr>
			<tr>
			<td>비밀번호</td>
			<td><input type="text"></td>
		</tr>
			<tr>
			<td>비밀번호 확인</td>
			<td><input type="text"></td>
		</tr>
			<tr>
			<td>이메일</td>
			<td><input type="text"> @ <input type="text">
				<select>
					<option value="직접입력">
					<option value="naver.com">
					<option value="hanmail.net">
					<option value="gmail.com">
				</select>
			</td>
		</tr>
	</table>
	
	<button>회원가입하기</button>
</div>
</body>
</html>
