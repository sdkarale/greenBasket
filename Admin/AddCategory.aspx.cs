using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace GreenBasket.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string c = ConfigurationManager.ConnectionStrings[@"mycon"].ToString();
            SqlConnection con = new SqlConnection(c);
            SqlCommand cmd = new SqlCommand("insert into Category (cname) values('" + txtAddCategory1.Text + "')",con);
            con.Open();
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Redirect("ViewCategory.aspx");
            }

            con.Close();

                        
                       
        
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCategory.aspx");
        }
    }
}