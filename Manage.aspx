<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/BookManage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="box">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource2" ItemPlaceholderID="itemholder"
        DataKeyNames="书籍编号" InsertItemPosition="LastItem">
        <LayoutTemplate>
            <div runat="server" id="itemholder">
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="divItem">
                <div class="div_item" id="a1" runat="server">
                    <img alt="" src='<%#Eval("书籍封面图","images/{0}") %>' />
                    <div class="fl">
                        <h3><%#Eval("书籍名称") %></h3>
                        <p>编号：<%#Eval("书籍编号") %></p>
                        <p>作者：<%#Eval("主编作者")%></p>
                        <p>价格：<%#Eval("书籍价格", "{0:C}")%></p>
                        <p>出版社：<%#Eval("出版社") %></p>
                        <p>出版时间：<%#Eval("出版时间","{0:D}") %></p>
                        <p>图书状态<asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("图书状态") %>' Enabled="false" Text="是否挂失" /></p>
                        <p>排序值：<%#Eval("排序值") %> </p>
                        <asp:Button ID="btn_edit" runat="server" Text="编辑" CommandName="edit" CssClass="btn" />
                        <asp:Button ID="btn_delete" runat="server" Text="删除" CommandName="delete" OnClientClick="return confirm('确定删除吗？')" CssClass="btn" />
                        <asp:Button ID="Button1" runat="server" Text="挂失" CommandName="waijie" OnCommand="cmd1"
                            CommandArgument='<%#Eval("书籍编号") %>' OnClientClick="return confirm('确定吗？')" CssClass="btn" /></
                    </p>
                         <div class="clr"></div>
                    </div>
                    <div class="clr"></div>
                </div>
        </ItemTemplate>
        <InsertItemTemplate>
            <div class="divItem">
                <div class="divinfo">
                    <table>
                        <tr>
                            <td>书籍编号：</td>
                            <td>
                                <asp:TextBox ID="txt_i_bianhao" runat="server" Text='<%#Bind("书籍编号") %>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>书籍名称：</td>
                            <td>
                                <asp:TextBox ID="txt_i_mingcheng" runat="server" Text='<%#Bind("书籍名称") %>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>书籍封面：</td>
                            <td>
                                <asp:TextBox ID="txt_i_fm" runat="server" Text='<%#Bind("书籍封面图") %>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>价格：</td>
                            <td>
                                <asp:TextBox ID="txt_i_jg" runat="server" Text='<%#Bind("书籍价格", "{0:C}")%>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>出版社：</td>
                            <td>
                                <asp:TextBox ID="txt_i_cbs" runat="server" Text='<%#Bind("出版社") %>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>出版时间：</td>
                            <td>
                                <asp:TextBox ID="txt_i_date" runat="server" Text='<%#Bind("出版时间","{0:D}") %>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>作者：</td>
                            <td>
                                <asp:TextBox ID="txt_i_zz" runat="server" Text='<%#Bind("主编作者")%>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>类别:</td>
                            <td>
                                <asp:TextBox ID="txt_i_lb" runat="server" Text='<%#Bind("书籍类别") %>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>图书状态：</td>
                            <td>
                                <asp:CheckBox ID="chk_i_enable" runat="server" Checked='<%#Bind("图书状态") %>' Text="是否挂失" /></td>
                        </tr>
                        <tr>
                            <td>排序值：</td>
                            <td>
                                <asp:TextBox ID="txt_i_pai" runat="server" Text='<%#Bind("排序值") %>' CssClass="txtbox" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btn_insert" runat="server" Text="插入" CommandName="insert" OnClientClick="return confirm('确定插入记录吗？')" CssClass="btn" />
                            </td>
                            <td>
                                <asp:Button ID="btn_cancel" runat="server" Text="取消" CommandName="cancel" CssClass="btn" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="clr">
                </div>
            </div>
        </InsertItemTemplate>
        <EditItemTemplate>
            <div class="divItem" style="border: 1px solid #0094ff;">
                <div class="divinfo">
                    <table>
                    <tr><td>书籍名称：</td><td><asp:TextBox ID="txt_e_mingcheng" runat="server" Text='<%#Bind("书籍名称") %>' CssClass="txtbox" /></td></tr>
                    <tr><td>书籍封面：</td><td><asp:TextBox ID="txt_e_fm" runat="server" Text='<%#Bind("书籍封面图") %>' CssClass="txtbox" /></td></tr>
                    <tr><td>价格：</td><td><asp:TextBox ID="txt_e_jg" runat="server" Text='<%#Bind("书籍价格")%>' CssClass="txtbox" /></td></tr>
                    <tr><td>出版社：</td><td><asp:TextBox ID="txt_e_cbs" runat="server" Text='<%#Bind("出版社") %>' CssClass="txtbox" /></td></tr>
                    <tr><td>出版时间：</td><td><asp:TextBox ID="txt_e_date" runat="server" Text='<%#Bind("出版时间","{0:D}") %>' CssClass="txtbox" /></td></tr>
                    <tr><td>作者：</td><td><asp:TextBox ID="txt_e_zz" runat="server" Text='<%#Bind("主编作者")%>' CssClass="txtbox" /></td></tr>
                    <tr><td>类别:</td><td><asp:TextBox ID="txt_e_lb" runat="server" Text='<%#Bind("书籍类别") %>' CssClass="txtbox" /></td></tr>
                    <tr><td>图书状态：</td><td><asp:CheckBox ID="chk_e_enable" runat="server" Checked='<%#Bind("图书状态") %>' Text="是否挂失" /></td></tr>
                    <tr><td>排序值：</td><td><asp:TextBox ID="txt_e_pai" runat="server" Text='<%#Bind("排序值") %>' CssClass="txtbox" /></td></tr>
                    <tr><td>
                        <asp:Button ID="btn_update" runat="server" Text="保存" CommandName="update" OnClientClick="return confirm('确定修改记录吗？')" CssClass="btn" />
                        </td><td><asp:Button ID="btn_cancel" runat="server" Text="取消" CommandName="cancel" CssClass="btn" /></td></tr>
                    </table>
                </div>
            </div>
            <div class="clr">
            </div>
            </div>
        </EditItemTemplate>
    </asp:ListView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/db/book.mdb"
        DeleteCommand="DELETE FROM [书籍表] WHERE ([书籍编号] = ?)"
        InsertCommand="INSERT INTO [书籍表] ([书籍编号],[书籍名称],[书籍封面图],[书籍价格],[出版社],[出版时间],[主编作者],[书籍类别],[图书状态], [排序值]) VALUES (?,?,?,?,?,?,?,?,?,?)"
        SelectCommand="SELECT * FROM [书籍表] WHERE 图书状态=FALSE"
        UpdateCommand="UPDATE [书籍表] SET [书籍名称] = ?, [书籍封面图] = ?, [书籍价格] = ?, [出版社] = ?, [出版时间] = ?, [主编作者] = ?, [书籍类别] = ?, [图书状态] = ?, [排序值] = ? WHERE (([书籍编号] = ?) OR ([书籍编号] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="书籍编号" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="书籍编号" Type="String" />
            <asp:Parameter Name="书籍名称" Type="String" />
            <asp:Parameter Name="书籍封面图" Type="String" />
            <asp:Parameter Name="书籍价格" Type="Decimal" />
            <asp:Parameter Name="出版社" Type="String" />
            <asp:Parameter Name="出版时间" Type="DateTime" />
            <asp:Parameter Name="主编作者" Type="String" />
            <asp:Parameter Name="书籍类别" Type="String" />
            <asp:Parameter Name="图书状态" Type="Boolean" />
            <asp:Parameter Name="排序值" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="书籍编号" Type="String" />
            <asp:Parameter Name="书籍名称" Type="String" />
            <asp:Parameter Name="书籍封面图" Type="String" />
            <asp:Parameter Name="书籍价格" Type="Decimal" />
            <asp:Parameter Name="出版社" Type="String" />
            <asp:Parameter Name="出版时间" Type="DateTime" />
            <asp:Parameter Name="主编作者" Type="String" />
            <asp:Parameter Name="书籍类别" Type="String" />
            <asp:Parameter Name="图书状态" Type="Boolean" />
            <asp:Parameter Name="排序值" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
        </div>
</asp:Content>