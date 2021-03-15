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
    public partial class DeleteCategory : System.Web.UI.Page
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
                        txtDeleteCategory.Text = dr["cname"].ToString();
                    }

                }

            }
        }

        protected void BtnCanceldelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCategory.aspx");
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
                
                    SqlCommand cmd = new SqlCommand("delete from Category where cname='"+txtDeleteCategory.Text+"'" , con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                   Response.Redirect("ViewCategory.aspx");
                    
                    con.Close();
                }

            }
        }
    
