
<!DOCTYPE html>
<html>
<head>
    <title>Log in</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>
<#--<h1>log in</h1><hr>-->
<#--<form action="/login" method="post">-->
<#--    e-mail: <input type="email" name="username"><br><br>-->
<#--    password: <input type="password" name="password"><br><br>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="log in"/>-->
<#--</form>-->
<#--<a href="/registration">sign up</a>-->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h1 class="text-center">Log in</h1>
            <hr>
            <form action="/login" method="post">
                <div class="form-group">
                    <label for="email">E-mail:</label>
                    <input type="email" class="form-control" id="email" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="submit" class="btn btn-primary btn-block">Log in</button>
            </form>
            <div class="text-center mt-3">
                <a href="/registration">Sign up</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>