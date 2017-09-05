<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>테이블 구성상황</title>
</head>
<body>
<div class="container">
<h2>서버 구축 상황</h2>
<p>회원가입 및 로그인 가능</p>
<p>테스트 DB이므로 PK적용 X</p>
  <h2>테이블 구성상황</h2>
  <p>테스트 | TESTMEM</p>  
	<table class="table table-hover">
		<thead>
			<tr>
				<th>컬러명</th>
				<th>데이터타입</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td>test_id</td>
			<td>NVARCHAR2(50)</td>
			</tr>
			<tr>
			<td>test_pw</td>
			<td>NVARCHAR2(10)</td>
			</tr>
		</tbody>
	</table>
	</div>
</body>
</html>