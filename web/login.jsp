<%-- 
    Document   : login
    Created on : 2015/12/26, 4:34:17
    Author     : nabana
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<% // TODO:①useBeanタグを追加する %>
<jsp:useBean id="user" scope="session" class="websample10.LoginUserBean" />

<%-- ログイン機能 --%>
<!DOCTYPE html>
<html>
    <head>
        <title>Java Login Form Sample</title>
        <link href="css/login.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="loginPane">
            <h1 class="loginPane__title">ログイン画面</h1>
            <h2 class="loginPane__description">ログインIDとパスワードを入力して下さい.</h2>
            <form action="./LoginServlet" method="post">
                <table class="loginPane__tableForm">
                    <tbody class="loginPane__tableForm__body">
                        <tr class="loginPane__tableForm__row">
                            <%-- ログイン済みの場合はIDを表示 --%>
                            <th class="loginPane__tableForm__head">ログインID</th>
                            <% // TODO:②valueにuser.getId()を追加する %>
                            <td class="loginPane__tableForm__data">
                                <input class="input_common" type="text" name="id" value="<%= user.getId()%>"/>
                            </td>
                        </tr>
                        <tr class="loginPane__tableForm__row">
                            <th class="loginPane__tableForm__head">パスワード</th>
                            <td class="loginPane__tableForm__data">
                                <input class="input_common" type="password" name="pass"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <input class="btn btn_common" type="submit" name="submit"  value="LogIn"/>
                
                <%-- ログイン済みの場合はログアウトボタンを表示 --%>
                <%-- TODO:③sessionからログイン状態が"login"であることを判定する --%>
                <% if ("login".equals(session.getAttribute("login"))){ %>
                <input class="btn btn_common" type="submit" name="submit" value="LogOut"/>
                <% } %>
            </form>
        </div>
    </body>
</html>
