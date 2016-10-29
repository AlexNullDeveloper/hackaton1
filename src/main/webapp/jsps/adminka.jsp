<%@ page import="com.dip.core.service.TeachersService" %>
<%@ page import="com.dip.core.pojos.Teacher" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Юрий
  Date: 29.10.2016
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
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
<%--<%! String[] checkboxes = null;%>
<% checkboxes = request.getParameterValues("checkboxes");
    if (checkboxes != null) {
        for (int i = 0; i < checkboxes.length; i++) {
            out.println(checkboxes[i]);
        }
    }
%> --%>
<div class="page-header" style="text-align: center;">
    <h1>Admin <small>Developers In Pyjamas</small></h1>
</div>



<div class="container" style="margin-top: 5%;">
    <div class="row">
        <div class="col-xs-6">
            <h2 style="margin-bottom: 20px;">Авторизованные</h2>
            <div class="list-group">
                <% for (Teacher teacher : (List<Teacher>) new TeachersService().getListOfAgreedTeachers()) { %>
                    <button type="button" class="list-group-item"><%=teacher.getFamilyName() + " " + teacher.getFirstName()
                            + " " + teacher.getSecondName() + " " + teacher.getPhone()%></button>
                <% }%>
               <!-- <button type="button" class="list-group-item">Cras justo odio</button>
                <button type="button" class="list-group-item">Dapibus ac facilisis in</button>
                <button type="button" class="list-group-item">Morbi leo risus</button>
                <button type="button" class="list-group-item">Porta ac consectetur ac</button>
                <button type="button" class="list-group-item">Vestibulum at eros</button> -->
            </div>
        </div>
        <div class="col-xs-6">
            <h2 style="margin-bottom: 20px;">Не авторизованные</h2>
            <div class="list-group">
                <form action="/teacherAgree" method="get" id="example_group2" autocomplete="on">
                <% for (Teacher teacher : (List<Teacher>) new TeachersService().getListOfNotAgreedTeachers()) {%>
                <button class="list-group-item">
                    <input type="checkbox" name="checkboxes" value="1"> <%=teacher.getFamilyName() + " " + teacher.getFirstName()
                        + " " + teacher.getSecondName() + " " + teacher.getPhone()%>
                </button>
                <%--<button class="list-group-item">--%>
                    <%--<input type="checkbox"> Check me out--%>
                <%--</button>--%>
                <%--<button class="list-group-item">--%>
                    <%--<input type="checkbox"> Check me out--%>
                <%--</button>--%>
                <%--<button class="list-group-item">--%>
                    <%--<input type="checkbox"> Check me out--%>
                <%--</button>--%>
                <% }%>
                </form>
            </div>
            <input type="button" name="all" id="example_all" rel="example_group2" value="Отметить все чекбоксы" />
            <input type="button" name="noone" id="example_noone" rel="example_group2" value="Сбросить все" />
            <button type="button" class="btn btn-danger">Отклонить</button>
            <button type="submit" class="btn btn-primary">Авторизовать</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready( function() {
        // Выбор всех
        //При клике по кнопке "отметить все" активируем чекбоксы
        $("#example_all").click( function() {
            $("#" + $(this).attr('rel') + " input:checkbox:enabled").attr('checked', true);
            return false;
        });

        // При клике по кнопке "сбросить все" убираем отметки
        $("#example_noone").click( function() {
            $("#" + $(this).attr('rel') + " input:checkbox:enabled").attr('checked', false);
            return false;
        });
    });
</script>
<footer class="footer">
    <div class="container">
        <p class="text-muted">DiP</p>
    </div>
</footer>
</body>
</html>
