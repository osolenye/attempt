<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<div class="card mt-3">
    <div class="card-body">
        <h5 class="card-title">${product.title}</h5>
        <h6 class="card-subtitle mb-2 text-muted">${authorProduct.name}</h6>
        <p class="card-text">${product.description}</p>
        <p class="card-text"><b>author: </b><a href="/user/${authorProduct.id}">${authorProduct.name}</a></p>
    </div>
</div>


</body>
</html>