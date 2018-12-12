using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Query : System.Web.UI.Page
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
        TextBox1.Attributes.Add("Value", "请输入搜素内容");
        TextBox1.Attributes.Add("OnFocus", "if(this.value=='请输入搜素内容') {this.value=''}");
        TextBox1.Attributes.Add("OnBlur", "if(this.value==''){this.value='请输入搜素内容'}");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["query"] = TextBox1.Text;
    }
}