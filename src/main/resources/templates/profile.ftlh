<!DOCTYPE html>
<html>
<head>
    <title>profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<h1>Your posts: </h1>
<#--<div class="card" style="width: 18rem;">-->
<#--    <#list products as product>-->
<#--        <img class="card-img-top" src="images/${product.getPreviewImageId()}" alt="Card image cap">-->
<#--        <div class="card-body">-->
<#--            <h5 class="card-title">${product.title}</h5>-->
<#--            <p class="card-text">${product.description}</p>-->
<#--            <a href="/post/${product.id}" class="btn btn-primary">more...</a>-->
<#--        </div>-->
<#--    </#list>-->
<#--</div>-->
<h2>${user.name}</h2>
<br>
Электоронная почта: <b>${user.email}</b>
<br>
<br>
<br>
<a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
   href="/my/products">
    posts:
</a>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
        logout
    </button>
</form>

</body>
</html>