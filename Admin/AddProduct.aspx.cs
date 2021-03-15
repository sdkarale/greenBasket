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
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmitP_Click(object sender, EventArgs e)
        {
            string c = ConfigurationManager.ConnectionStrings[@"mycon"].ToString();
            SqlConnection con = new SqlConnection(c);
            SqlCommand cmd = new SqlCommand("insert into Product values('" + txtNameP.Text + "','"+txtDescP.Text+ "',"+txtPriceP.Text+","+txtQuantityP.Text+",'"+FileUpload1.FileName +"',"+ DropDownList1.SelectedValue+")", con);
            FileUpload1.SaveAs(Server.MapPath("~/Images/"+FileUpload1.FileName));
            con.Open();
            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Redirect("ViewCategory.aspx");
            }

            con.Close();
        }
    }
}