<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
    <title>profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<header>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
        <div class="container-fluid">
            <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarExample01"
                    aria-controls="navbarExample01"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarExample01">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/my/products">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>
                    <li class="nav-item">
                        <#if user.isAdmin()>
                            <a class="nav-link"  href="/admin">admin</a>
                        </#if>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>
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
mail: <b>${user.email}</b>
<br>
<br>
<br>
<h1>Your posts: </h1>
<a class="btn btn-dark mb-3" style="text-align: center; width: 100%"
   href="/my/products">
    posts:
    div class="card" style="width: 18rem;">
        <#list products as product>
            <img class="card-img-top" src="images/${product.getPreviewImageId()}" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">${product.title}</h5>
                <p class="card-text">${product.description}</p>
                <a href="/post/${product.id}" class="btn btn-primary">more...</a>
            </div>
        </#list>
    </div>
</a>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" style="text-align: center; width: 100%" class="btn btn-danger mb-2">
        logout
    </button>
</form>

</body>
</html>