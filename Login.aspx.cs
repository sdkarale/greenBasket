using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreenBasket
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                string c = ConfigurationManager.ConnectionStrings[@"mycon"].ToString();
                SqlConnection con = new SqlConnection(c);
                SqlCommand cmd = new SqlCommand("select * from Users where uemail='"+txtUser.Text+"' and upassword='"+txtPassword.Text+"'", con);


                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                

                if (dr.Read())
                {
                    Session.Add("user", dr[1].ToString());
                    Response.Cookies["id"].Value = dr[0].ToString();
                    Response.Redirect("Index.aspx");
                }

                else
                {

                    Literal1.Text = "wrong Credentials";
                }
                con.Close();
            }
            else
                Literal1.Text = "Select Checkbox";
        
        }
    }
}