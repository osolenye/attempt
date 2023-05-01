<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
</head>
<body>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>title: </b>${product.title}<br>
<b>description: </b>${product.description}<br>
<b>author: </b> <a href="/user/${authorProduct.id}">${authorProduct.name}</a>
<#--<b>author: </b>${product.user.name}<br>-->
</body>
</html>