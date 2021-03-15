using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreenBasket
{
    public partial class Addtocart : System.Web.UI.Page
    {
        
        static string c = ConfigurationManager.ConnectionStrings[@"mycon"].ToString();
        SqlConnection con = new SqlConnection(c);

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (!IsPostBack)
            {
                BindData();
                if ((Request.QueryString["id"] != null) &&  (Session["user"] != null))
                {
                    int u_id = Convert.ToInt32(Request.Cookies["id"].Value);
                    int pid = Convert.ToInt32(Request.QueryString["id"].ToString());
                    

                    SqlCommand cmd = new SqlCommand("insert into cart(pid,u_id) values("+pid+","+u_id+")", con);
                    con.Open();

                    int i = cmd.ExecuteNonQuery();

                    if (i > 0)
                    {BindData();
                    }
                    con.Close();
                   
                }
            }
        }
            internal void BindData()
        {
            if (Session["user"] != null)
            {
                int u_id = Convert.ToInt32(Request.Cookies["id"].Value);
                SqlCommand cmd = new SqlCommand("select p.pname product , p.price price, p.pimage image, c.Quantity quantity, c.cid cid from cart c, Product p where c.pid=p.pid and u_id=" + u_id, con);


                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            }

            protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
            {
                int id = (int)GridView1.DataKeys[e.RowIndex].Value;
                SqlCommand cmd = new SqlCommand("delete from cart where cid="+id, con);
                con.Open();
                int i=cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("Addtocart.aspx");
                }

                con.Close();
                
            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                Response.Redirect("BuyNow.aspx");
            }

           

          
        }
    }
