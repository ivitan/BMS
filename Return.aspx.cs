using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Return : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            string _id = Session["user"].ToString();
            user.Text = _id;
            mc.Text = Request.QueryString["bianhao"];

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = -1;
        string _id = Session["user"].ToString();
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/db/book.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);

        string sql = "DELETE FROM [借阅] WHERE ([借书日期] = " + mc.Text + "')";

        Response.Write(sql);
        cnn.Open();
        cmd = new OleDbCommand(sql, cnn);

        try { i = cmd.ExecuteNonQuery(); }

        catch (OleDbException)
        {

        }

        cnn.Close();
        if (i == 1)
        {

            Response.Write("<script>alert('成功!')</script>");

        }

        else if (i < 1)
        {
            Response.Write("<script>alert('出错了，请重试!')</script>");

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reader.aspx");
    }
}