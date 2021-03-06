﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="xscjglxt.Login" %>

<!DOCTYPE html>
<html lang="zh-CN">
  <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>学生成绩管理系统</title>
    <!-- Bootstrap -->
    <link href="Content/bootstrap.css" rel="stylesheet">
  </head>
  <body style="background:#a4b483">
    <div class="container-fluid">
        <form class="col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4" runat="server" style="margin-top:50px;padding:10px;background:rgba(221, 216, 215, 0.90);box-shadow:rgba(36, 95, 71, 0.63) 10px 10px 20px">
            <p class="bg-primary" style="text-align:center;padding-top:10px;padding-bottom:10px">用户登录</p>
            <div class="form-group">
                <label for="yhbh">账号</label>
                <input type="text" class="form-control" id="yhbh" placeholder="请输入账号" runat="server">
            </div>
            <div class="form-group">
                <label for="yhmm">密码</label>
                <input type="password" class="form-control" id="yhmm" placeholder="请输入密码" runat="server">
            </div>
            <div class="form-group">
                <label for="yhlb">用户类别</label>
                <select id="yhlb" class="form-control" runat="server">
                    <option value="1">学生</option>
                    <option value="2">教师</option>
                </select>
            </div>
            <asp:Button ID="btnLogin" CssClass="btn btn-primary" runat="server" Text="用户登录" OnClick="btnLogin_Click"/>
        </form>
    </div>

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="Scripts/jquery-1.9.1.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="Scripts/bootstrap.js"></script>
  </body>
</html>