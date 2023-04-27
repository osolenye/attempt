
<!DOCTYPE html>
<html>
<head>
    <title>log in</title>
</head>
<body>
<h1>log in</h1><hr>
<form action="/login" method="post">
    e-mail: <input type="email" name="username"><br><br>
    password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="log in"/>
</form>
<a href="/registration">sign up</a>
</body>
</html>