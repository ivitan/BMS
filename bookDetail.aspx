<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="bookDetail.aspx.cs" Inherits="bookDetil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Detail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="box">
        <div id="div_listview" class="fl">
            <h2>本书详情</h2>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="detail" ItemPlaceholderID="itemholder">
                <LayoutTemplate>
                    <div id="itemholder" runat="server"></div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="div_item" id="a1" runat="server">
                        <img alt="" src='<%#Eval("书籍封面图","images/{0}") %>' />
                        <div class="fl">
                            <h3><%#Eval("书籍名称") %></h3>
                            <p>作者：<%#Eval("主编作者")%></p>
                            <p>价格：<%#Eval("书籍价格", "{0:C}")%></p>
                            <p>出版社：<%#Eval("出版社") %></p>
                            <p>出版时间：<%#Eval("出版时间","{0:D}") %></p>
                            <a href='Borrow.aspx?bianhao=<%#Eval("书籍编号") %>' style="text-decoration: none; font-size: 14px; color: Red; margin-left: auto">借阅</a>
                        </div>
                        <div class="clr"></div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="detail" runat="server"
                DataFile="~/db/book.mdb"
                SelectCommand="SELECT * FROM [书籍表] WHERE ([书籍编号] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="书籍编号" QueryStringField="bianhao"
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
    </div>
</asp:Content>

