<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Administration</title>-->
<#--</head>-->
<#--<body>-->
<#--<hr>-->
<#--<table border="1">-->
<#--    <tr>-->
<#--        <th>Email</th>-->
<#--        <th>Active</th>-->
<#--        <th>Role</th>-->
<#--        <th>Banned</th>-->
<#--        <th>Edit</th>-->
<#--        <th>User details...</th>-->
<#--    </tr>-->
<#--    <#list users as user>-->
<#--        <tr>-->
<#--            <th>${user.email}</th>-->
<#--            <th><#if user.active>true<#else>false</#if></th>-->
<#--            <th><#list user.roles as role>${role}</#list></th>-->
<#--            <th>-->
<#--                <form action="/admin/user/ban/${user.id}" method="post">-->
<#--                    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                    <input type="submit" value="Ban">-->
<#--                </form>-->
<#--            </th>-->
<#--            <th><a href="/admin/user/edit/${user.id}">Edit user</a></th>-->
<#--            <th><a href="/user/${user.id}">User details</a></th>-->
<#--        </tr>-->
<#--    <#else>-->
<#--        <h3>No registrated users</h3>-->
<#--    </#list>-->
<#--</table>-->
<#--</body>-->
<#--</html>-->
<!DOCTYPE html>
<html>
<head>
    <title>Administration</title>
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
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>


<hr>
<div class="container">
    <table class="table table-dark table-striped">
        <thead>
        <tr>
            <th>Email</th>
            <th>Active</th>
            <th>Role</th>
            <th>Banned</th>
            <th>Edit</th>
            <th>User details</th>
        </tr>
        </thead>
        <tbody>
        <#if users?has_content>
            <#list users as user>
                <tr>
                    <td>${user.email}</td>
                    <td><#if user.active>true<#else>false</#if></td>
                    <td>
                        <#list user.roles as role>
                            ${role}
                        </#list>
                    </td>
                    <td>
                        <form action="/admin/user/ban/${user.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <button type="submit" class="btn btn-danger">Ban</button>
                        </form>
                    </td>
                    <td><a href="/admin/user/edit/${user.id}" class="btn btn-primary">Edit user</a></td>
                    <td><a href="/user/${user.id}" class="btn btn-secondary">User details</a></td>
                </tr>
            </#list>
        <#else>
            <tr>
                <td colspan="6" class="text-center">
                    <h3>No registered users</h3>
                </td>
            </tr>
        </#if>
        </tbody>
    </table>
</div>
</body>
</html>
