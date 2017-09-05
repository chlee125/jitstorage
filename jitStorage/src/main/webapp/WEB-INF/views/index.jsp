<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<title>Insert title here</title>
<style>

	header{width:500px;border-bottom:2px solid #B2CCFF; margin:0 auto;}
	
	
	
	section #loginform #em-pw{width:400px; position:relative; padding:10px;  margin:0 auto; position:relative; }
	
	#loginform #email,#pw{width:300px; border:1px solid black;}
	#loginform .login{display:block; width:105px; height:60px;	border:1px solid #cccccc; position:absolute; top:20%; right:0; text-align:center;
	line-height:60px; text-shadow: black; background-color:#cccccc;	border-radius:5px; color:white; }
	
	#em-pw #email,#pw{border-radius: 2px; border:1px solid black; }
	
	#regist {
		cursor: pointer;
		color: #00ffff;
	}
</style>
</head>
<body>
<header>
		<h1>로그인</h1>
	</header>

	<nav>
	</nav>
	
	<section>
		<div id ="loginform">
		 <form method="post" action="login" id="loginAction">
			<div id="em-pw">
				<br />
				<div>
				<input type="email" id="email" name="email" placeholder="이메일"><br /><br />
				<input type="password" name="password" id="pw" placeholder="비밀번호">	 
				</div>
				<a class="login" id="login" href="#">로그인</a><br />
				<span class="sright" id="regist">회원가입</span>&nbsp;/
				<span class="sleft" id="findpw">비밀번호찾기</span>
			</div>
		</form>
		</div>
		
		
	</section>
	
	<footer>
	<p><a href="table">공지사항</a></p>
	<p><a href="index2">index2</a></p>
	</footer>
</body>
<script>
	$("#regist").click(function() {
		location.href = "./join";
	});
	
	$("#login").click(function() {
		$("#loginAction").submit();
	});
</script>
</html>