<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"></asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\VisualStudio\me.vitan.book\me.vitan.book\me.vitan.book\db\book.mdb" 
                DeleteCommand="DELETE FROM [书籍表] WHERE (([书籍编号] = ?) OR ([书籍编号] IS NULL AND ? IS NULL))" 
                InsertCommand="INSERT INTO [书籍表] ([书籍编号], [书籍名称], [书籍封面图], [书籍价格], [出版社], [出版时间], [主编作者], [书籍类别], [图书状态], [排序值]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT * FROM [书籍表]" 
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
                    <asp:Parameter Name="书籍名称" Type="String" />
                    <asp:Parameter Name="书籍封面图" Type="String" />
                    <asp:Parameter Name="书籍价格" Type="Decimal" />
                    <asp:Parameter Name="出版社" Type="String" />
                    <asp:Parameter Name="出版时间" Type="DateTime" />
                    <asp:Parameter Name="主编作者" Type="String" />
                    <asp:Parameter Name="书籍类别" Type="String" />
                    <asp:Parameter Name="图书状态" Type="Boolean" />
                    <asp:Parameter Name="排序值" Type="Int32" />
                    <asp:Parameter Name="书籍编号" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </form>
</body>
</html>
