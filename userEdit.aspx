<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="UserEdit.aspx.cs" Inherits="userEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <link href="css/inputbut.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="register">
        <table style="margin: auto; border-spacing: 0px 15px;">
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
                        ControlToValidate="txtrepassword">两次密码不一致</asp:CompareValidator></td>
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
                    <asp:Button ID="btn1" runat="server" Text="修改" OnClick="but_Click" CssClass="btn" />
                    <asp:Button ID="btn2" runat="server" Text="取消" CssClass="btn" OnClick="btn2_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

