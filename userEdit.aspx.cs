using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class userEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            string _id = Session["user"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void but_Click(object sender, EventArgs e)
    {
        string _id = Session["user"].ToString();
        int i = -1;
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/db/book.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);

        string sql = "Update [读者信息] Set [密码]='" + txtpassword.Text + " ',[读者姓名]='" + name.Text + " ',[读者类型]='" + work.Text + " ',[读者性别]='" + sex.Text + " 'where [读者编号]='" + _id + "'";

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

            Response.Write("<script>alert('修改成功!')</script>");

        }

        else if (i < 1)
        {
            Response.Write("<script>alert('修改出错了，请重新尝试!')</script>");

        }
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reader.aspx");
    }
}
