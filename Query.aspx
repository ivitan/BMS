<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="Query.aspx.cs" Inherits="Query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <link href="css/Querry.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="box">
        <div id="div_listview" class="fl">
            <h2>书籍搜索</h2>
            <table style="margin-top: 0px;">
                <tr>
                    <td style="width: 200px">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox"></asp:TextBox></td>
                    <td><br />
                        <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="btn" />
                    </td>
                </tr>
            </table>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="asc_query" ItemPlaceholderID="itemholder">
                <LayoutTemplate>
                    <div id="itemholder" runat="server"></div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="div_item" id="a1" runat="server">
                        <img alt="" src='<%#Eval("书籍封面图","images/{0}") %>' />
                        <div class="fl">
                            <h3><%#Eval("书籍名称") %></h3>
                            <p>编号：<%#Eval("书籍编号") %></p>
                            <p>作者：<%#Eval("主编作者")%></p>
                            <p>价格：<%#Eval("书籍价格", "{0:C}")%></p>
                            <p>出版社：<%#Eval("出版社") %></p>
                            <p>出版时间：<%#Eval("出版时间","{0:D}") %></p>
                            <a href='Borrow.aspx?bianhao=<%#Eval("书籍编号") %>' style="text-decoration: none; font-size: 14px; color: Red; margin-left: auto">立即借阅</a>
                        </div>
                        <div class="clr"></div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="asc_query" runat="server"
                DataFile="~/db/book.mdb" SelectCommand="SELECT * FROM [书籍表] WHERE ([书籍名称] LIKE '%' + ? + '%') OR ([书籍编号] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="书籍名称" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="书籍编号" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
    </div>
</asp:Content>

