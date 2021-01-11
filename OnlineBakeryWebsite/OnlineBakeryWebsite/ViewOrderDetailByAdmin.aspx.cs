using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBakeryWebsite
{
    public partial class ViewOrderDetailByAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString);
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UNAME"] == null)
            {
                Response.Redirect("HomeLogin.aspx");
            }
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from OrderTable join  TableProduct on OrderTable.Product_Id=TableProduct.PId join UserTable on OrderTable.Customer_id = UserTable.UserId where OrderTable.OrderId='" + Request.QueryString["id".ToString()] + "'", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                lblAddress.Text = dr[20].ToString();
                lblCustomerContact.Text = dr[19].ToString();
                lblCustomerName.Text = dr[17].ToString();
              
                lblOrderDate.Text = dr[1].ToString();
                lblDeliveryDate.Text = dr[2].ToString();
                lblProductPrice.Text = dr[4].ToString();
             
                lblProdutName.Text = dr[9].ToString();
                lblQuantity.Text = dr[3].ToString();
                Image1.ImageUrl = dr[15].ToString();
            }
            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderDetailByAdmin.aspx");
        }
    }
}