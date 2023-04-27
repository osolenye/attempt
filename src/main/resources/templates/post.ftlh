<!DOCTYPE html>
<html>
<head>
    <title>post details</title>
</head>
<body>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>title: </b>${product.title}<br>
<b>description: </b>${product.description}<br>
<b>author: </b>${product.user.name}<br>

<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete product"/>
</form>
</body>
</html>