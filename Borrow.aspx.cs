using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Borrow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            string _id = Session["user"].ToString();
            user.Text = _id;
            bh.Text = Request.QueryString["bianhao"];
            date.Text = DateTime.Now.ToString("yyyy-MM-dd");
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

        string sql = "insert into [借阅](读者编号,图书编号,借书日期,还书日期) values('" + _id + "','" + bh.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + hshu.Text + "')";

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
        Response.Redirect("Query.aspx");
    }
}