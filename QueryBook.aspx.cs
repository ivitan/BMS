﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QueryBook : System.Web.UI.Page
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

    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {
        Session["leibie"] = BulletedList1.Items[e.Index].Value;
    }
}