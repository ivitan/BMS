<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="addBook.aspx.cs" Inherits="addBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/addBook.css" rel="stylesheet" />
        <script type="text/javascript">
        function isempty() {
            var txt_id = document.getElementById("bh");
            if (txt_id.value == "") {
                alert("请填入相关数据");
                txt_id.focus();
                return false;
            }
            else {return true;}
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin: auto; border-spacing: 0px 15px;">
                <tr>
                    <td>书籍编号</td>
                    <td>
                        <asp:TextBox ID="bh" runat="server" CssClass="txtbox"></asp:TextBox></td>
                </tr>
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
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" OnClientClick="return isempty()" CssClass="btn"/></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="取消"  CssClass="btn" OnClick="Button2_Click" /></td>
                </tr>
            </table>
</asp:Content>

