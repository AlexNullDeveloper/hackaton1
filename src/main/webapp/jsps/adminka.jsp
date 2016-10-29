<%--
  Created by IntelliJ IDEA.
  User: Юрий
  Date: 29.10.2016
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8"/>
    <title>Admin Page</title>
    <link rel="icon" href="../favicon.png">
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="js/script.js"></script>
</head>
<body>
<div class="page-header" style="text-align: center;">
    <h1>Admin <small>Developers In Pyjamas</small></h1>
</div>



<div class="container" style="margin-top: 5%;">
    <div class="row">
        <div class="col-xs-6">
            <h2 style="margin-bottom: 20px;">Авторизованные</h2>
            <div class="list-group">
                <button type="button" class="list-group-item">Cras justo odio</button>
                <button type="button" class="list-group-item">Dapibus ac facilisis in</button>
                <button type="button" class="list-group-item">Morbi leo risus</button>
                <button type="button" class="list-group-item">Porta ac consectetur ac</button>
                <button type="button" class="list-group-item">Vestibulum at eros</button>
            </div>
        </div>
        <div class="col-xs-6">
            <h2 style="margin-bottom: 20px;">Не авторизованные</h2>
            <div class="list-group">
                <button class="list-group-item">
                    <input type="checkbox"> Check me out
                </button>
                <button class="list-group-item">
                    <input type="checkbox"> Check me out
                </button>
                <button class="list-group-item">
                    <input type="checkbox"> Check me out
                </button>
            </div>
            <input type="checkbox"> Выбрать всех </br></br>
            <button type="button" class="btn btn-danger">Отклонить</button>
            <button type="button" class="btn btn-primary">Авторизовать</button>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="text-muted">DiP</p>
    </div>
</footer>
</body>
</html>
