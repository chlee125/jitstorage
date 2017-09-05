<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>JiT is Team's NAS Storage Project</title>
</head>

<body>
    <div class="container">
        <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel-body">

                <header>
                    <h1>로그인</h1>
                </header>

                <section>
                    <form id="login-form" method="post" action="login">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="email" type="email" class="form-control" name="email" placeholder="이메일">
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="password" type="password" class="form-control" name="password" placeholder="비밀번호">
                        </div>

                        <button type="submit" class="btn btn-default btn-btn-block">로그인</button>
                        <p class="text-primary">비밀번호 찾기</p>
                        <button type="button" class="btn btn-primary" onclick="join()">회원가입</button>
                    </form>
                </section>

                <footer>
                    <p><a href="table">공지사항</a></p>
                </footer>
            </div>
        </div>
    </div>
</body>
<script>
	function join() {
		location.href = "join";
	}
</script>
</html>
