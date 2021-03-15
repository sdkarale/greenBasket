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
    public partial class Details : System.Web.UI.Page
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

                    SqlCommand cmd = new SqlCommand("select * from Product where pid=" + id, con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        lblname.Text = dr["pname"].ToString();
                        lblprice.Text = dr["price"].ToString();
                        lblquantity.Text = dr["quantity"].ToString();
                        lblDesc.Text = dr["pdesc"].ToString();
                        Image2.ImageUrl = "~/Images/" + dr["pimage"].ToString();
                    }

                }

            }

        }
    }
}