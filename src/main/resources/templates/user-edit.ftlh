<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Edit</title>-->
<#--</head>-->
<#--<body>-->
<#--<h3>User: ${user.name}</h3>-->
<#--<form action="/admin/user/edit" method="post">-->
<#--    <#list roles as role>-->
<#--        <div>-->
<#--            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>-->
<#--        </div>-->
<#--    </#list>-->
<#--    <input type="hidden" value="${user.id}" name="userId">-->
<#--    <input type="hidden" value="${_csrf.token}" name="_csrf">-->
<#--    <button type="submit">Save</button>-->
<#--</form>-->
<#--</body>-->
<#--</html>-->
<!DOCTYPE html>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #000;
            color: #fff;
        }
    </style>
</head>

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

                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>

<body>
<div class="container">
    <h3>User: ${user.name}</h3>
    <form action="/admin/user/edit" method="post">
        <#list roles as role>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="${role}" id="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                <label class="form-check-label" for="${role}">
                    ${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
</body>
</html>
