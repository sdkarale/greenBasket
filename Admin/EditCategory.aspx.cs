using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreenBasket.Admin
{
    public partial class EditCategory : System.Web.UI.Page
    {
        static string c = ConfigurationManager.ConnectionStrings[@"mycon"].ToString();
        SqlConnection con = new SqlConnection(c);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["id"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);

                    SqlCommand cmd = new SqlCommand("select * from Category where cid=" + id, con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        txtUpdateCategory.Text = dr["cname"].ToString();
                        HiddenField1.Value = dr["cid"].ToString();
                    }

                }

            }
        }

        protected void BtnCancelUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCategory.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Category set cname='" + txtUpdateCategory.Text + "' where cid='" + HiddenField1.Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("ViewCategory.aspx");

            con.Close();

        }
    }
}