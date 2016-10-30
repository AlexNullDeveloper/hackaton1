<%@ page import="com.dip.core.pojos.Teacher" %>
<%@ page import="com.dip.core.service.TeachersService" %>
<%@ page import="com.dip.core.pojos.Faculty" %>
<%@ page import="com.dip.core.service.FacultiesService" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Юрий
  Date: 29.10.2016
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../html/header.html" %>
<div class="page-header" style="text-align: center;">
    <h1>Teacher Page <small>Developers In Pyjamas</small></h1>
</div>
<div class="container" style="margin-top: 5%;">
    <div class="row">
        <div class="col-md-4">
            <h2 style="margin-bottom: 20px;">Факультет</h2>
            <div class="list-group">
                <% for (Faculty faculty : (List<Faculty>) new FacultiesService().getListOfFaculties()) {%>
                <button type="button" class="list-group-item"><%=faculty.getVuz() + " " + faculty.getName()%></button>
                <%--<button type="button" class="list-group-item">Dapibus ac facilisis in</button>--%>
                <%--<button type="button" class="list-group-item">Morbi leo risus</button>--%>
                <%--<button type="button" class="list-group-item">Porta ac consectetur ac</button>--%>
                <%--<button type="button" class="list-group-item">Vestibulum at eros</button>--%>
                <%}%>
            </div>
        </div>
        <div class="col-md-4">
            <h2 style="margin-bottom: 20px;">Список групп</h2>
            <div class="list-group">
                <button type="button" class="list-group-item">Cras justo odio</button>
                <button type="button" class="list-group-item">Dapibus ac facilisis in</button>
                <button type="button" class="list-group-item">Morbi leo risus</button>
                <button type="button" class="list-group-item">Porta ac consectetur ac</button>
                <button type="button" class="list-group-item">Vestibulum at eros</button>
            </div>
        </div>
        <div class="col-md-4">
            <h2 style="margin-bottom: 20px;">Список учащихся</h2>
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
            <button type="button" class="btn btn-primary">Отправить сообщение</button>
        </div>
    </div>
</div>
<%@include file="../html/footer.html" %>
