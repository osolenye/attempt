<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
    <title>Main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
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
<#--<#list images as img>-->
<#--    <img src="/images/${img.id}" height="400px"/><br><br>-->
<#--</#list>-->


<div id="carouselExample" class="carousel slide">
    <div class="carousel-inner">
        <#list images as img>
        <div class="carousel-item active">
            <img src="/images/${img.id}" class="d-block w-100" height="700px" alt="...">
        </div>
        </#list>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>


<div class="card mt-3">
    <div class="card-body">
        <h5 class="card-title">${product.title}</h5>
        <h6 class="card-subtitle mb-2 text-muted">${authorProduct.name}</h6>
        <p class="card-text">${product.description}</p>
        <p class="card-text"><b>author: </b><a href="/user/${authorProduct.id}">${authorProduct.name}</a></p>
    </div>
</div>


<form action="/comment/create/${product.id}" method="post">
    comment text: <input type="text" name="commentText"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить товар"/>
</form>
<#list comments as comment>
    <div>
        <h1 ${comment.commentText}></h1>
    </div>
</#list>




</body>
</html>