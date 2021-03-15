using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreenBasket
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

                Label1.Text = "Welcome " + Session["user"].ToString();
                LinkButton1.Text = "Logout";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx?name=" + TextBox1.Text);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (LinkButton1.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Remove("user");
                Response.Redirect("Index.aspx");
            }


        }
    }
}