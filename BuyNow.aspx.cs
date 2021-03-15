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
    public partial class BuyNow : System.Web.UI.Page
    {
        static string c = ConfigurationManager.ConnectionStrings[@"mycon"].ToString();
        SqlConnection con = new SqlConnection(c);
        protected void Page_Load(object sender, EventArgs e)
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
    }
}