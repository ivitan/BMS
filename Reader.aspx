<%@ Page Title="" Language="C#" MasterPageFile="~/Reader.master" AutoEventWireup="true" CodeFile="Reader.aspx.cs" Inherits="Reader" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <link href="css/reader.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="box">
        <div id="div_listview" class="fl">
            <h2><asp:Label ID="UserName" runat="server"  CssClass="user"></asp:Label>&nbsp&nbsp&nbsp<asp:Button ID="Button1" runat="server" Text="退出登录" CssClass="btn" OnClick="Button1_Click"/></h2>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="asc_user" ItemPlaceholderID="itemholder">
                <LayoutTemplate>
                    <div id="itemholder" runat="server"></div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="div_item" id="a1" runat="server">
                        <img alt="" src='<%#Eval("读者相片","images/{0}") %>' />
                        <div class="fl">
                            <h3><%#Eval("读者编号") %></h3>
                            <p>姓名：<%#Eval("读者姓名")%></p>
                            <p>性别：<%#Eval("读者性别") %></p>
                            <p>类型：<%#Eval("读者类型")%></p>
                            <p>办证时间：<%#Eval("办证日期","{0:D}") %></p>
                            <a href='UserEdit.aspx?bianhao=<%#Eval("读者编号") %>' style="text-decoration: none; font-size: 14px; color: Red; margin-left: auto">修改信息</a>
                        </div>
                        <div class="clr"></div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="asc_user" runat="server"
                DataFile="~/db/book.mdb" SelectCommand="SELECT * FROM [读者信息] WHERE ([读者编号] = ？)">
                <SelectParameters>
                    <asp:SessionParameter Name="读者编号" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
        <div id="div_listview2" class="fl">
            <h2>借阅记录</h2>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="asc_jie" ItemPlaceholderID="itemholder">
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
                            <p>类别:<%#Eval("书籍类别") %></p>
                            <p>出版时间：<%#Eval("出版时间","{0:D}") %></p>
                            <a href='Return.aspx?bianhao=<%#Eval("书籍名称") %>' style="text-decoration: none; font-size: 14px; color: Red; margin-left: auto">还书</a>
                        </div>
                        <div class="clr"></div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="asc_jie" runat="server"
                DataFile="~/db/book.mdb" SelectCommand="SELECT * FROM [查询1] WHERE ([读者信息.读者编号] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="column1" SessionField="user" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </div>
    </div>
</asp:Content>

