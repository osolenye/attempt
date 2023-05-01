<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>
<h4>Registration</h4>
<form action="/registration" method="post">
    <div class="form-group">
        <label for="username">user name:</label>
        <input type="text" class="form-control" id="username" name="name">
    </div>
    <div class="form-group">
        <label for="email">email:</label>
        <input type="email" class="form-control" id="email" name="email">
    </div>
    <div class="form-group">
        <label for="password">password:</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit" class="btn btn-primary">Registration: </button>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>

</body>
</html>