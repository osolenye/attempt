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
<#--                    d-->
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>

<#--<#if user.email??>-->
<#--    <h3>User name: <i>${user.name}</i></h3>-->
<#--    <form action="/logout" method="post">-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--        <input type="submit" value="log out"/>-->
<#--    </form>-->
<#--<#else>-->
<#--    <a href="/login">Log in: </a></h1>-->
<#--</#if>-->
<#--<hr>-->
<#--<form action="/" method="get">-->
<#--    Find posts: <input type="text" name="title">-->
<#--    <input type="submit" value="search"/>-->
<#--</form>-->

<#--    <div class="container mt-5">-->
<#--        <div class="row">-->
<#--            <#list products as product>-->
<#--                <div class="col-md-2">-->
<#--                    <a href="/product/${product.id}"><img class="img-fluid" height="90px" src='/images/${product.getPreviewImageId()}'></a>-->
<#--                </div>-->
<#--            </#list>-->
<#--        </div>-->
<#--    </div>-->

<#--<#if user.email??>-->
<#--    <hr>-->
<#--    <form action="/product/create" method="post" enctype="multipart/form-data">-->
<#--        post title: <input type="text" name="title"/><br><br>-->
<#--        description: <input type="text" name="description"/><br><br>-->
<#--        image №1: <input type="file" name="file1"/><br><br>-->
<#--        image №2: <input type="file" name="file2"/><br><br>-->
<#--        image №3: <input type="file" name="file3"/><br><br>-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--        <input type="submit" value="new post"/>-->
<#--    </form>-->
<#--</#if>-->
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
        <#list products as product>
            <div class="col-md-2">
                <div class="card" style="width: 10rem;">
                    <a href="/product/${product.id}">
                        <img class="card-img-top" src="/images/${product.getPreviewImageId()}" height="90px" alt="${product.title}">
                    </a>
                </div>
            </div>
        </#list>
    </div>
<#--    <#if user.email??>-->
<#--        <hr>-->
<#--        <form action="/product/create" method="post" enctype="multipart/form-data">-->
<#--            <div class="form-group">-->
<#--                <label for="title">Post title:</label>-->
<#--                <input type="text" class="form-control" id="title" name="title" required>-->
<#--            </div>-->
<#--            <div class="form-group">-->
<#--                <label for="description">Description:</label>-->
<#--                <input type="text" class="form-control" id="description" name="description" required>-->
<#--            </div>-->
<#--            <div class="form-group">-->
<#--                <label for="file1">Image №1:</label>-->
<#--                <input type="file" class="form-control-file" id="file1" name="file1" required>-->
<#--            </div>-->
<#--            <div class="form-group">-->
<#--                <label for="file2">Image №2:</label>-->
<#--                <input type="file" class="form-control-file" id="file2" name="file2">-->
<#--            </div>-->
<#--            <div class="form-group">-->
<#--                <label for="file3">Image №3:</label>-->
<#--                <input type="file" class="form-control-file" id="file3" name="file3">-->
<#--            </div>-->
<#--            <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--            <button type="submit" class="btn btn-primary">new post</button>-->
<#--        </form>-->
<#--    </#if>-->
</div>
</body>
</html>