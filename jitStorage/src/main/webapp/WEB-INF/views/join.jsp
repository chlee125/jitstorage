<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<title>Insert title here</title>
<style>
	header{width:400px; border-bottom: 1px solid blue; margin:0 auto;}

	section #Join{width:400px;  position:relative; margin:0 auto;}
	
	#Join #em , #pw, #pwc,#sn{position: absolute; left:20%; border-radius:3px; }
	
	#Join #sb{position: absolute; left:60%; top:62%; background-color: black; color:white; border-radius: 3px;  }
	
	#chk {
		display: none;
	}	
</style>
</head>
<body>

	<header>
		<h1>회원가입</h1>
	</header>

	<nav>
	</nav>
	
	<section>
		<div id="Join">
			<form action="regist" method="post" >
				<br />
				&nbsp; E-mail:<input type="email" id="em" name="email"><br /><br />
				Password:<input type="password" id="pw" name="password" onchange="displayV(this)"><span id="chk">V</span><br /><br />
				P.W Check<input type="password" id="pwc" name="passwordChk"><br /><br />
				닉네임 :<input type="text" id="sn" name="nickname"> <br />
				<button type="button" id="sb">중복확인</button><br /><br />
				
				<input type="submit"/>
				<button type="reset">취소</button>
			</form>
		</div>
		
	</section>
	
	<footer>
	</footer>

</body>
<script>

function displayV() {
		console.log("aa");
		$("#chk").css("display", "block");
	
}
	
</script>
</html>