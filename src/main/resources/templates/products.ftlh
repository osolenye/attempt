<!DOCTYPE html>
<html lang="en"  data-bs-theme="dark">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
                    <#if user.email??>
                    <li class="nav-item">
                        <a class="nav-link" href="/post/create">Post</a>
                    </li>
                    </#if>
                    <li class="nav-item">
                        <form action="/" method="get" class="form-inline my-2 my-lg-0">
                            <input <#--class="form-control mr-sm-2"--> type="text" name="title" placeholder="Find posts">
                            <button class="btn btn-success my-2 my-sm-0" type="submit">search</button>
                        </form>
                    </li>
                    <li class="nav-item">
                        <#if user.isAdmin()>
                            <a class="nav-link"  href="/admin">admin</a>
                        </#if>
                    </li>
<#--                    d-->
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>


<div class="container mt-5">
    <#if user.email??>
        <h3>User name: <i>${user.name}</i></h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-primary">log out</button>
        </form>
    <#else>
        <a href="/login" class="btn btn-primary">Log in</a>
    </#if>
    <hr>
    <div class="row">
<#--        <#list products as product>-->
<#--            <div class="col-md-2">-->
<#--                <div class="card" style="width: 10rem;">-->
<#--                    <a href="/product/${product.id}">-->
<#--                        <img class="card-img-top" src="/images/${product.getPreviewImageId()}" height="200px" alt="${product.title}">-->
<#--                    </a>-->
<#--                </div>-->
<#--            </div>-->
<#--        </#list>-->
        <div class="row">
            <#list products as product>
                <div class="col-md-3 mb-3">
                    <div class="card" style="width: 15rem;">
                        <a href="/product/${product.id}">
                            <img class="card-img-top" src="/images/${product.getPreviewImageId()}" height="300px" alt="${product.title}">
                        </a>
                    </div>
                </div>
            </#list>
        </div>

    </div>
</div>
</body>
</html>
