using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void but_Click(object sender, EventArgs e)
    {
        int i = -1;
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/db/book.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);



        string sql = "insert into  读者信息(读者编号,密码,读者姓名,读者类型,读者性别,办证日期) values('" + txtusername.Text + "','" + txtpassword.Text + "','" + name.Text + "','" + work.Text + "','" + sex.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";

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

            // but2.Visible = true; 
            Response.Write("<script>alert('注册成功!')</script>");

            // Response.Redirect("denglu.aspx");
        }

        else if (i < 1)
        {
            Response.Write("<script>alert('注册出错了，请重新选个用户名!')</script>");

        }
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}