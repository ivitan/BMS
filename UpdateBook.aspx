<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="UpdateBook.aspx.cs" Inherits="UpdateBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/inputbut.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="margin: auto; border-spacing: 0px 15px;">
        <tr>
            <td>书籍名称</td>
            <td>
                <asp:TextBox ID="mc" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>书籍封面图</td>
            <td>
                <asp:TextBox ID="fm" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>书籍价格</td>
            <td>
                <asp:TextBox ID="jg" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>出版社</td>
            <td>
                <asp:TextBox ID="cbs" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>出版时间</td>
            <td>
                <asp:TextBox ID="date" runat="server" CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>主编作者</td>
            <td>
                <asp:TextBox ID="zz" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>书籍类别</td>
            <td>
                <asp:TextBox ID="lb" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="更新" OnClick="Button1_Click" OnClientClick="return isempty()" CssClass="btn"  /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="取消" CssClass="btn" OnClick="Button2_Click" /></td>
        </tr>
    </table>
</asp:Content>

