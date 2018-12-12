<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="BookQuery.aspx.cs" Inherits="BookQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/BookQuerry.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="box">
        <div id="div_listview" class="fl">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="asc_shuji" ItemPlaceholderID="itemholder">
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
                            <a href='Borrow.aspx?bianhao=<%#Eval("书籍编号") %>' style="text-decoration: none; font-size: 14px; color: Red; margin-left: auto">书籍信息更新</a>
                        </div>
                        <div class="clr"></div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="asc_shuji" runat="server"
                DataFile="~/db/book.mdb" SelectCommand="SELECT * FROM [书籍表] WHERE ([书籍类别] = ？)">
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="文学类" Name="书籍类别" SessionField="leibie" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            <asp:AccessDataSource ID="AccessDataSource1" runat="Server"></asp:AccessDataSource>
        </div>

        <div id="div_menu" class="fr">
            <h3 style="color: #3f51b5;">按分类查询</h3>
            <asp:BulletedList ID="BulletedList1" runat="server"
                DataSourceID="asc_lb" DataTextField="书籍类别" DataValueField="书籍类别" DisplayMode="LinkButton" OnClick="BulletedList1_Click">
            </asp:BulletedList>
            <asp:AccessDataSource ID="asc_lb" runat="server" DataFile="~/db/book.mdb" SelectCommand="SELECT [书籍类别] FROM [lb] "></asp:AccessDataSource>
        </div>
        <div class="clr"></div>
    </div>
</asp:Content>

