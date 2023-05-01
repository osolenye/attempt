<!DOCTYPE html>
<html>
<head>
    <title>profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<h1>${user.name}</h1>

<h1>User's posts: </h1>
<div class="container">
    <div class="row">
        <#list products as product>
            <div class="col-sm-6 col-md-4 col-lg-3 mb-4">
                <div class="card">
                    <img class="card-img-top" src="/images/${product.getPreviewImageId()}" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.description}</p>
                        <a href="/product/${product.id}" class="btn btn-primary">more...</a>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>


</body>
</html>