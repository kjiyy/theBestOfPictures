<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
	<meta charset="utf-8">
	<title>회원가입</title>
	<link href="/resources/css/register.css" type="text/css" rel="stylesheet">
</head>
<script type="text/javascript">							
	function checkNick() {
		let nick = document.querySelector('#nick').value;
		let nickling = nick.replace(/\s/gi, "");

		if (nick == "") {
			alert("닉네임을 입력해주세요");
			document.querySelector('#nick').focus();
		} else {
			nick.innerHTML = nickling.value;
			alert(nickling + "은/는 사용가능한 닉네임입니다. 사용하시겠습니까?");
			document.querySelector('#ID').focus();
			document.querySelector('#nick').readOnly = true;
			document.querySelector('#nickBTN').disabled = true;
		}
	}				
					
	function checkID() {
		let id = document.querySelector('#ID').value;
		let idling = id.replace(/\s/gi, "");

		if (id == "") {
			alert("아이디를 입력해주세요");
			document.querySelector('#ID').focus();
		} else {
			alert(idling + "은/는 사용가능한 닉네임입니다. 사용하시겠습니까?");
			document.querySelector('#PW').focus();
			document.querySelector('#ID').readOnly = true;
			document.querySelector('#IDBTN').disabled = true;
		}
	}
	
	function reNick() {
		document.querySelector('#nick').value = "";
		document.querySelector('#nick').readOnly = false;
		document.querySelector('#nickBTN').disabled = false;
	}
	
	function reID() {
		document.querySelector('#ID').value = "";
		document.querySelector('#ID').readOnly = false;
		document.querySelector('#idBTN').disabled = false;
	}
</script>
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
				<button id="reNick" onclick="reNick()">재입력</button>
			</td>
		</tr>
			<tr>
			<td>아이디</td>
			<td><input id="ID" type="text">		
				<button id="idBTN" onclick="checkID()">중복확인</button>
				<button id="reID" onclick="reID()">재입력</button>
			</td>
		</tr>
			<tr>
			<td>비밀번호</td>
			<td><input id="PW" type="text"></td>
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
