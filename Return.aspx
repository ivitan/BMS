<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="Return.aspx.cs" Inherits="Return" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="margin: auto; border-spacing: 0px 15px;">
        <tr>
            <td>读者编号</td>
            <td>
                <asp:TextBox ID="user" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>书籍编号</td>
            <td>
                <asp:TextBox ID="bh" runat="server" CssClass="txtbox"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" OnClientClick="return isempty()" CssClass="btn" /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="取消" CssClass="btn" OnClick="Button2_Click" /></td>
        </tr>
    </table>
</asp:Content>

