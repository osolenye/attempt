<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<#if user.email??>
    <h3>User name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="log out"/>
    </form>
<#else>
    <a href="/login">Log in: </a></h1>
</#if>
<hr>
<form action="/" method="get">
    Find posts: <input type="text" name="title">
    <input type="submit" value="search"/>
</form>

    <div class="container mt-5">
        <div class="row">
            <#list products as product>
                <div class="col-md-2">
                    <a href="/product/${product.id}"><img class="img-fluid" src='images/${product.getPreviewImageId()}'></a>
                </div>
            </#list>
        </div>
    </div>

<#if user.email??>
    <hr>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        post title: <input type="text" name="title"/><br><br>
        description: <input type="text" name="description"/><br><br>
        image №1: <input type="file" name="file1"/><br><br>
        image №2: <input type="file" name="file2"/><br><br>
        image №3: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="new post"/>
    </form>
</#if>
</body>
</html>