<%-- 
    Document   : loginOK
    Created on : 2015/12/26, 4:40:32
    Author     : nabana
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="user" scope="session" class="websample10.LoginUserBean" />

<!DOCTYPE html>
<html>
    <head>
        <title>Java Login Form Sample</title>
        <link href="/schoo/WEB-sample10/css/login.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>ログインユーザ情報</h1>
        <p>ID:<jsp:getProperty property="id" name="user"/></p>
        <p>名前:<jsp:getProperty property="name" name="user"/></p>
        <p>年齢:<jsp:getProperty property="age" name="user"/></p>
        <form>
            <input class="common_button" type="button" 
                   onclick="location.href = './login.jsp'" value="戻る">
        </form>
    </body>
</html>