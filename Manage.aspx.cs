using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmd1(object sender, CommandEventArgs e)
    {
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = "~/db/book.mdb";
        OleDbConnection cnn;
        OleDbCommand cmd;
        string str_sql;

        string str_conn = str_connection + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_conn);
        cnn.Open();
        str_sql = "update 书籍表 set 图书状态 = true where 书籍编号='" + e.CommandArgument + "'";
        cmd = new OleDbCommand(str_sql, cnn);
        cmd.ExecuteNonQuery();
        ListView1.DataBind();
        cnn.Close();
    }
}