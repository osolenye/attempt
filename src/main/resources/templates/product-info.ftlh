<#--<!DOCTYPE html>-->
<#--<html data-bs-theme="dark">-->
<#--<head>-->
<#--    <title>Main</title>-->
<#--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"-->
<#--          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">-->
<#--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"-->
<#--            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"-->
<#--            crossorigin="anonymous"></script>-->
<#--</head>-->
<#--<body>-->
<#--<header>-->
<#--    <!-- Navbar &ndash;&gt;-->
<#--    <nav class="navbar navbar-expand-lg navbar-dark bg-black">-->
<#--        <div class="container-fluid">-->
<#--            <button-->
<#--                    class="navbar-toggler"-->
<#--                    type="button"-->
<#--                    data-mdb-toggle="collapse"-->
<#--                    data-mdb-target="#navbarExample01"-->
<#--                    aria-controls="navbarExample01"-->
<#--                    aria-expanded="false"-->
<#--                    aria-label="Toggle navigation"-->
<#--            >-->
<#--                <i class="fas fa-bars"></i>-->
<#--            </button>-->
<#--            <div class="collapse navbar-collapse" id="navbarExample01">-->
<#--                <ul class="navbar-nav me-auto mb-2 mb-lg-0">-->
<#--                    <li class="nav-item active">-->
<#--                        <a class="nav-link" aria-current="page" href="/">Home</a>-->
<#--                    </li>-->
<#--                    <li class="nav-item">-->
<#--                        <a class="nav-link" href="/my/products">Profile</a>-->
<#--                    </li>-->
<#--                    <li class="nav-item">-->
<#--                        <a class="nav-link" href="/login">Login</a>-->
<#--                    </li>-->
<#--                    <li class="nav-item">-->
<#--                        <a class="nav-link" href="/about">About</a>-->
<#--                    </li>-->
<#--                    <li class="nav-item">-->
<#--                        <#if user.isAdmin()>-->
<#--                            <a class="nav-link" href="/admin">admin</a>-->
<#--                        </#if>-->
<#--                    </li>-->
<#--                </ul>-->
<#--            </div>-->
<#--        </div>-->
<#--    </nav>-->
<#--    <!-- Navbar &ndash;&gt;-->
<#--</header>-->
<#--&lt;#&ndash;<#list images as img>&ndash;&gt;-->
<#--&lt;#&ndash;    <img src="/images/${img.id}" height="400px"/><br><br>&ndash;&gt;-->
<#--&lt;#&ndash;</#list>&ndash;&gt;-->


<#--<div id="carouselExample" class="carousel slide">-->
<#--    <div class="carousel-inner">-->
<#--        <#list images as img>-->
<#--            <div class="carousel-item active">-->
<#--                <img src="/images/${img.id}" class="d-block w-100" height="700px" alt="...">-->
<#--            </div>-->
<#--        </#list>-->
<#--    </div>-->
<#--    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">-->
<#--        <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<#--        <span class="visually-hidden">Previous</span>-->
<#--    </button>-->
<#--    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">-->
<#--        <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<#--        <span class="visually-hidden">Next</span>-->
<#--    </button>-->
<#--</div>-->


<#--<div class="card mt-3">-->
<#--    <div class="card-body">-->
<#--        <h5 class="card-title">${product.title}</h5>-->
<#--        <h6 class="card-subtitle mb-2 text-muted">${authorProduct.name}</h6>-->
<#--        <p class="card-text">${product.description}</p>-->
<#--        <p class="card-text"><b>author: </b><a href="/user/${authorProduct.id}">${authorProduct.name}</a></p>-->
<#--    </div>-->
<#--</div>-->


<#--<form action="/comment/create/${product.id}" method="post">-->
<#--    comment text: <input type="text" name="commentText"/>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <input type="submit" value="add comment"/>-->
<#--</form>-->

<#--<h1>Comments:</h1>-->
<#--<#list comments as comment>-->
<#--    <section class="gradient-custom">-->
<#--        <div class="container my-5 py-5">-->
<#--            <div class="row d-flex justify-content-center">-->
<#--                <div class="col-md-12 col-lg-10 col-xl-8">-->
<#--                    <div class="card">-->
<#--                        <div class="card-body p-4">-->
<#--                            <div class="row">-->
<#--                                <div class="col">-->
<#--                                    <div class="d-flex flex-start">-->
<#--                                        <div class="flex-grow-1 flex-shrink-1">-->
<#--                                            <div>-->
<#--                                                <div class="d-flex justify-content-between align-items-center">-->
<#--                                                    <p class="mb-1">-->
<#--                                                        ${comment.user.username} <span class="small">-${comment.dateOfCreated}</span>-->
<#--                                                    </p>-->
<#--                                                </div>-->
<#--                                                <p class="small mb-0">-->
<#--                                                    ${comment.commentText}-->
<#--                                                </p>-->
<#--                                            </div>-->


<#--                                        </div>-->
<#--                                    </div>-->
<#--                                </div>-->
<#--                            </div>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </section>-->
<#--</#list>-->


<#--</body>-->
<#--</html>-->
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
    <title>Main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<header>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarExample01"
                    aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
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
                            <a class="nav-link" href="/admin">admin</a>
                        </#if>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>

<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <#list images as img>-->
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
        <p class="card-text"><b>Author: </b><a href="/user/${authorProduct.id}">${authorProduct.name}</a></p>
    </div>
</div>

<form action="/comment/create/${product.id}" method="post">
    <div class="input-group mt-3">
        <input type="text" class="form-control" name="commentText" placeholder="Add a comment">
        <button type="submit" class="btn btn-primary">Add comment</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </div>
</form>


<div class="container">
    <h1>Comments:</h1>
    <div class="row">
        <#list comments as comment>
            <div class="col-md-6">
                <div class="card mt-3">
                    <div class="card-body">
                        <h5 class="card-title">${comment.user.username}</h5>
                        <p class="card-text">${comment.commentText}</p>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>
</html>
