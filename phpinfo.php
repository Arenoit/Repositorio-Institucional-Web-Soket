<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Chat</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="offset-md-3 col-md-6">
                <input type="text" placeholder="nombre" name="nombre" id="nombre" class="form-control"><br>
                <textarea name="mensaje" id="mensaje" cols="30" rows="10" class="fom-control"></textarea><br>
                <button id="btn" class="btn btn-info">Enviar</button>
            </div>
        </div>
    </div>
</body>
<script src="./chat.js"></script>
</html>