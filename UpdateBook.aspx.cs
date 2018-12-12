using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class UpdateBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            string _id = Session["user"].ToString();
            string bh = Request.QueryString["bianhao"];
            mc.Text = Request.QueryString["mc"];
            fm.Text = Request.QueryString["fm"];
            jg.Text = Request.QueryString["jg"];
            cbs.Text = Request.QueryString["cbs"];
            date.Text = Request.QueryString["sj"];
            zz.Text = Request.QueryString["zz"];
            lb.Text = Request.QueryString["lb"];
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = -1;
        int p;
        p = Convert.ToInt32(jg.Text.Trim());
        string bh = Request.QueryString["bianhao"];
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/db/book.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);

        string sql = "UPDATE [书籍表] SET [书籍名称] =\"" + mc.Text + "\", [书籍封面图] =\"" + fm.Text + "\",[书籍名称] =\"" + mc.Text + "\",[书籍价格] =\"" + p + "\",[出版社] =\"" + cbs.Text + "\",[出版时间] =\"" + date.Text + "\",[主编作者] =\"" + zz.Text + "\", [书籍类别] =\"" + lb.Text + "\""+" WHERE [书籍编号] =" + bh ;

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

            Response.Write("<script>alert('更新成功!')</script>");

        }

        else if (i < 1)
        {
            Response.Write("<script>alert('更新出错了，请重新尝试!')</script>");

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdamQuery.aspx");
    }
}