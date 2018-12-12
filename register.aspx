<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户注册</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.png" />
    <link href="css/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-header">
            <div class="header-title">用户注册</div>
        </div>
        <div id="main">
            <div class="register">
            <table style="margin: auto; border-spacing: 0px 15px;">
                <tr>
                    <td class="style1">编号 </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server" CssClass="txtbox"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtusername">必须输入用户名</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="txtbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpassword">密码不能为空!</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>确认密码</td>
                    <td>
                        <asp:TextBox ID="txtrepassword" runat="server" TextMode="Password" CssClass="txtbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="txtpassword"
                            ControlToValidate="txtrepassword">两次输入密码的密码不同！</asp:CompareValidator></td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td>
                        <asp:TextBox ID="name" runat="server" CssClass="txtbox"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="style1">类型</td>
                    <td>
                        <asp:DropDownList ID="work" runat="server" CssClass="dlist" trigger="hover">
                            <asp:ListItem>学生</asp:ListItem>
                            <asp:ListItem>教师</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">性别 </td>
                    <td>
                        <asp:DropDownList ID="sex" runat="server" CssClass="dlist">
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btn1" runat="server" Text="确定" OnClick="but_Click" CssClass="btn" />
                        <asp:Button ID="btn2" runat="server" Text="返回登录" CssClass="btn" OnClick="btn2_Click"  /></td>
                </tr>
            </table>
          </div>
        </div>
    </form>
</body>
</html>
