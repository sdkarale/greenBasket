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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (CheckBox.Checked)
            {
                string gender = "";
                if (RB1.Checked)
                {
                    gender = "male";

                }
                if (RB2.Checked)
                {

                    gender = "female";
                }

                string c = ConfigurationManager.ConnectionStrings[@"mycon"].ToString();
                SqlConnection con = new SqlConnection(c);
                SqlCommand cmd = new SqlCommand("insert into Users values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtDate.Text + "','" + gender + "','" + txtPassword.Text + "')", con);

                con.Open();
                int i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Redirect("Login.aspx");
                }

                con.Close();
            }
        }
    }
}